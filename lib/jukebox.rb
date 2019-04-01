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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  new_songs = ""
  songs.each_with_index {|song,ind| puts "#{ind+1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  inp = gets.chomp
  if inp.class != Integer
    if !songs.include?(inp)
      puts "Invalid input, please try again"
    else
      puts "Playing #{inp}"
    end
  end
  if inp.class == Integer
    puts "YES"
    if !inp.between?(1,9)
      puts "YES2"
      puts "Invalid input, please try again"
    else
      puts "YES3"
      puts "Playing #{songs[inp-1]}"
    end
  end

end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  u_inp = gets.chomp
  until u_inp != "exit" do
    if u_inp == "help"
      help
    elsif u_inp == "list"
      list(songs)
    elsif u_inp == "play"
      play(songs)
    elsif u_inp == "exit"
      exit_jukebox
      break
    end

    u_inp = gets.chomp
  end
end

run(songs)
