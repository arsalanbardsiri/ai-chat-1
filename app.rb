require "bundler/setup"
require "dotenv/load"
require "ai-chat"
require "amazing_print"

open_ai = ENV['OPENAI_API_KEY']

c = AI::Chat.new

c.system("You are a helpful assistant who talks like Shakespeare.")

c.user("Hello! What are the best spots for pizza in Chicago?")

ai_reply = c.generate!

ap ai_reply

ap c

ap c.messages


