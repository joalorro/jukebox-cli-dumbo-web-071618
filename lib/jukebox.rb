require "pry"

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

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits the program"
end

def list songs
  songs.each_with_index do |song,index|
    puts "#{index + 1}. #{song}"
  end
end

def play song_list
    
  puts "Please enter a song name or number:"
  input = gets.chomp
  
  tracks = 1..song_list.length
  
  if song_list.include?(input) == true 
    puts "Playing /#{song_list[ song_list.index(input) ]}/"
  elsif tracks.include?(input.to_i) == true 
    puts "Playing #{song_list[input.to_i - 1]}"
  else
    puts "Invalid input, please try again."
  end
end

def exit_jukebox
  puts "Goodbye."
end

def run songs
  help
  command = ""
  until command == "exit" 
    
    puts "Please enter a command:"
    command = gets.chomp 
    
    case command
      
      when "list"
        list songs 
      when "help"
        help 
      when "play"
        play songs
      when "exit"
        exit_jukebox 
      
    end
  end
end