require 'sinatra'
# we need to require this gem to open a json URL
require 'open-uri'
require 'http'
require 'json'

get('/') do
  
  symbols_url = HTTP.get("https://api.exchangerate.host/symbols")
  parsed_response = JSON.parse(symbols_url)
  symbols = parsed_response.fetch("symbols")
  @symbol = []
  symbols.each do |key, value|
    @symbol.push(key)
  end

  erb(:symbol_list)
end
