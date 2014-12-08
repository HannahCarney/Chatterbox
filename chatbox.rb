

def red(text); colorize(text, 31); end
def green(text); colorize(text, 32); end

# Actual example
#puts 'Importing categories  ' + green('DONE') + ' '
# puts 'Importing tags       ' + red('FAILED') + ''

def prompt_bot
  puts ' ' + red('Bot: ') + ' '
end 

def prompt_human
    puts ' ' + green('You: ') + ' '
end


def get_response(input)
  key = RESPONSES.keys.select {|k| /#{k}/ =~ input }.sample
  /#{key}/ =~ input
  response = RESPONSES[key]
  response.nil? ? 'sorry?' : response % { c1: $1, c2: $2, c3: $3}
end


RESPONSES = { 'goodbye' => 'bye', 
              'sayonara' => 'sayonara', 
              'the weather is (.*)' => 'I hate it when it\'s %{c1}', 
              'I love (.*)' => 'I love %{c1} too', 
              'I groove to (.*) and (.*)' => 'I love %{c1} but I hate %{c2}',
              'I eat (.*) and (.*)' => 'I love eating %{c1} but %{c2} doesn\'t taste good to me',
              'I am from (.*)' => 'I have never been to %{c1}',
              'For fun I (.*)' => 'I also %{c1}, but only on weekends',
              'Talking to computers is (.*)' => 'I find talking to humans %{c1}',
              'Coding is (.*)' => 'Without coding being %{c1} I wouldn\'t be here talking to you',
              'I know (.*), (.*) and (.*) languages' => 'I also know %{c1}, %{c2} and %{c3} but then again I know every language.',
              'quit' => 'quitting...'}

fname = "responses.txt"
somefile = File.open(fname, "w")
somefile.puts RESPONSES
somefile.close

prompt_bot
puts "Hello, what's your name?"
prompt_human
name = gets.chomp
prompt_bot
puts "Hello #{name}"
prompt_bot
puts "Where do you go to school?"
prompt_human
school = gets.chomp
prompt_bot
puts "Do you like Ruby?"
prompt_human
ruby = gets.chomp
prompt_bot
puts "What is your favorite computer language?"
prompt_human
language = gets.chomp
prompt_bot
puts "Do you like to work in teams?"
prompt_human
teams = gets.chomp
while(input = gets.chomp) do
  puts get_response(input)
  
  if input == 'quit'
    break 
  end
end 