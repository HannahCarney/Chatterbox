def colorize(text, color_code)
  "\e[#{color_code}m#{text}\e[0m"
end


def red(text); colorize(text, 31); end
def green(text); colorize(text, 32); end

# Actual example
#puts 'Importing categories  ' + green('DONE') + ' '
# puts 'Importing tags       ' + red('FAILED') + ''

def prompt_bot(question)
  puts ' ' + red('Bot: ') + ' '
  puts(question) 
end 

def prompt_human
    puts ' ' + green('You: ') + ' '
    gets.chomp
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


def save_responses
  fname = "responses.txt"
  somefile = File.open(fname, "w")
  somefile.puts RESPONSES
  somefile.close
end

def bot_question(question)
  prompt_bot(question)
  prompt_human
end

name = bot_question("Hello, what's your name?")

prompt_bot("Hello #{name}")

school = bot_question("Where do you go to school?")
ruby = bot_question("Do you like Ruby?")
language = bot_question("What is your favorite computer language?")
teams = bot_question("Do you like to work in teams?")

while(input = gets.chomp) do
  puts get_response(input)
  
  if input == 'quit'
    save_responses
    break 
  end
end 

