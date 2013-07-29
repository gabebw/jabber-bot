require 'rubygems'
require 'bundler/setup'

require 'easy-gtalk-bot'
require 'nokogiri'
require 'open-uri'

Dir.glob('./lib/*.rb').each do |library|
  require library
end

# for foreman
STDOUT.sync = true

bot = GTalk::Bot.new(email: ENV['GOOGLE_EMAIL'], password: ENV['GOOGLE_PASSWORD'])
bot.get_online

bot.on_invitation do |inviter|
  bot.message "Thanks for inviting me, #{inviter}. I'm accepting now!"
  bot.accept_invitation(inviter)
end

bot.on_message do |from, text|
  puts "#{from} says: #{text}"
  if text =~ /foodtrucks/i
    puts "#{from} is asking about foodtrucks"
    bot.message "sure i can do foodtrucks"
    bot.message Foodtruck.new.all
  end
end
