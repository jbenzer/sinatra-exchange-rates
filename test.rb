require 'open-uri'
require 'http'
require 'json'


symbols_url = HTTP.get("https://api.exchangerate.host/symbols")
#puts symbols_url.to_s

parsed_response = JSON.parse(symbols_url)
symbols = parsed_response.fetch("symbols")
#pp symbols
symbols.each do |key, value|
  pp "Key: #{key}"
  pp "Value: #{value}"
  pp"==============="
end
