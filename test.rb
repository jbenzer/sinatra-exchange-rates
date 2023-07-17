require 'open-uri'
require 'http'
require 'json'


# symbols_url = HTTP.get("https://api.exchangerate.host/symbols")
# parsed_response = JSON.parse(symbols_url)
# symbols = parsed_response.fetch("symbols")
# @symbol = []
# symbols.each do |key, value|
#   @symbol.push(key)
# end
# convert_url = HTTP.get("https://api.exchangerate.host/convert?from=USD&to=CNY")
# parsed = JSON.parse(convert_url)
# convert = parsed.fetch("query").fetch("amount")
# pp convert.class
