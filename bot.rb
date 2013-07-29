require 'bundler/setup'

require 'easy-gtalk-bot'
require 'nokogiri'
require 'open-uri'

Dir.glob('./lib/*.rb').each do |library|
  require library
end

bot = GTalk::Bot.new(email: ENV['GOOGLE_EMAIL'], password: ENV['GOOGLE_PASSWORD'])
bot.get_online
