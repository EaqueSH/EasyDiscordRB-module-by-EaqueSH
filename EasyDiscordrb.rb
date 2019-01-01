require 'discordrb'
require 'colorize'
require 'websocket'


module EasyDiscordrb



	class NameBot

		attr_accessor :var, :prefixe, :tok


		def initialize(variable, token, pref)
			@var = variable
			@tok = token
			@prefixe = pref

		end

		def Namebot
			@var = Discordrb::Commands::CommandBot.new token: tok, prefix: prefixe

		end

		def BotStart
			var.run


		end



	end

	class Ready

		attr_accessor :variable

		def initialize(var)
			@variable = var

		end


		def ready

			puts "+=================[ My bot ]==================+".blue
			puts "Bot is ready".green
			puts "This bot has been dev with EasyDiscordRb".blue
			puts "==============================================+".blue

		end

	end


	class Commandss

		def help(var, name_command, content)

			var.command name_command do |commands|
				
				commands.respond(content)


			end



		end


		def pmMention(var, content)

			var.mention  do |pm_mention|

				pm_mention.user.pm(content)


			end



		end



	end

end