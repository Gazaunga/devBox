require 'net/http'
require 'uri'

uri = URI.parse("http://wttr.in/Moon")
response = Net::HTTP.get_response(uri)

# response.code
# response.body
