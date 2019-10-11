require 'launchy'

def check_if_user_gave_input
  abort("search: missing input") if ARGV.empty?
end

def go_search
  search = []
  ARGV.each do |word|
    search << word
  end
  Launchy.open("https://www.google.com/search?q=#{search.join('+')}")
end

def perform
  check_if_user_gave_input
  go_search
end

perform
