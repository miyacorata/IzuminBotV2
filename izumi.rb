require 'rubygems'
require 'bundler/setup'
require 'dotenv'
require 'slack-ruby-client'

puts 'IzuminBotV2 Starting...'
puts Time.now

# .envの読み込み
Dotenv.load

# トークンの設定
Slack.configure do |conf|
  conf.token = ENV['TOKEN']
  puts "#{Time.now}:Bot token loaded from ENV."
end

# クライアントインスタンスの生成
client = Slack::RealTime::Client.new
puts "#{Time.now}:RTM Client loaded."

# 起動時の処理
client.on :hello do
  puts "#{Time.now}:IzuminBotV2 READY!!"
end

# メッセージが飛んできたときの処理
client.on :message do |data|
  puts "#{Time.now}:Message received."
  pp data
  # 声をかけられたら返事します
  if data['text'] =~ /^(いずみん|大石|泉)(ちゃん)?、?いる/
    client.message channel: data['channel'], text: 'いるよーどうかした？'
  end
  # 進捗orがんばりを褒めます
  if data['text'] =~ /ほめて|がんばった|進捗(?! だめ)/
    client.message channel: data['channel'], text: 'えらい！'
  end
  # はげまします
  if data['text'] =~ /つらい/
    client.message channel: data['channel'], text: '大丈夫、きっとできるよ...！'
  end
end

client.start!
