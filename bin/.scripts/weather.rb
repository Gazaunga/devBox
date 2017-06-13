require 'net/http'
require 'uri'

uri = URI.parse("http://wttr.in/LOCATION")
response = Net::HTTP.get_response(uri)

# response.code
# response.body
