require 'sinatra'
# we need to require this gem to open a json URL
require 'open-uri'
require 'http'
require 'json'

symbols_url = HTTP.get("https://api.exchangerate.host/symbols")
parsed_response = JSON.parse(symbols_url)
symbols = parsed_response.fetch("symbols")
$symbol = []
symbols.each do |key, value|
  $symbol.push(key)
end

get('/') do
  erb(:symbol_list)
end


get('/:symbol1') do
  @symbol_1 = params.fetch("symbol1")

  erb(:symbol_pair)
end

get('/:sym_a/:sym_b') do
  @sym_a = params.fetch("sym_a")
  @sym_b = params.fetch("sym_b")

  convert_url = "https://api.exchangerate.host/convert?from=" + @sym_a + "&to=" + @sym_b
  resp = HTTP.get(convert_url)
  parsed_convert = JSON.parse(resp)
  @result = parsed_convert.fetch("info").fetch("rate").to_s

  erb(:convert)
end  
