require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

=begin
def say_hello(name)
  "Hi #{name}!"
end

puts "Enter your name"
user_name = gets.chomp

puts say_hello(user_name)
=end

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, x|
    puts "#{x+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
    if response.to_i.between?(1,songs.length) && response.to_i != 0
      puts "Playing #{songs[response.to_i - 1]}"
    elsif songs.include?(response)
      puts "Playing #{response}"
      #binding.pry
    else
      puts "Invalid input, please try again"
    end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  loop do
    puts "Please enter a command:"
    response = gets.chomp
      if response.downcase == "help"
        help
      elsif response.downcase == "list"
        list(songs)
      elsif response.downcase == "play"
        play(songs)
      elsif response.downcase == "exit"
        exit_jukebox
        break;
      else
        puts "Not a valid response"
      end
    response = ""
  end
end
