require 'open-uri'
require 'net/http'
require 'json'

class GetRequester
  
  def get_requester
    get_requester = url = 'https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json'
    uri = URI.parse(url)
    uri.open.string
  end
  
  def body
    url = 'https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json'
    response = Net::HTTP.get_response(uri)
    response.body
  end
  
  def json
    JSON.parse(response.body)
  end
end