require 'httpclient'
require 'json'
hc = HTTPClient.new()

#show
uri ='http://localhost:3000/show_map'
#puts hc.get_content(uri)

#index1
uri ='http://localhost:3000/get_map/1'
#puts hc.get_content(uri)

#index2
uri ='http://localhost:3000/get_map/999'
puts hc.get_content(uri)

#create
uri ='http://localhost:3000/create'
data={
  "name" => 'test',
  "longitude" => 100.00,
  "latitude" => 50.00,
}
#puts hc.post_content(uri,data)
