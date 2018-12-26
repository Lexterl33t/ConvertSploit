require 'open-uri'
require 'colorize'




class Requests

	attr_accessor :video_link


	def initialize(link)
		@video_link = link

	end


	def youtube_dl
		system("youtube-dl --extract-audio --audio-format mp3 #{video_link}")


	end








end

if ARGV.length == 2
	if ARGV[0] == "-l"
		puts "Script Dev by Muham'RB".red
		request = Requests.new(ARGV[1])
		request.youtube_dl
		puts "Nice your song is download in the same folde. Thanks u for has been used my script x)".green

	else
		puts "USAGE: ConvertSploit.rb -l <link youtube>".red

	end

else
	puts "USAGE: ConvertSploit.rb -l <link youtube>".red

end



