require 'rails_helper'

RSpec.describe City, type: :request do
   describe "GET /cities" do
     it "returns all the cities" do
       create(:city, name: 'New York')
       create(:city, name: 'Lagos')

       get '/cities'

       expect(response.status).to eq 200

       #puts "the repsonse: #{response.body}"

       body = JSON.parse(response.body)
       city_names = body['data'].map{|city| city['attributes']['name'] }
       expect(city_names).to match_array(['New York', 'Lagos'])
     end
   end

   describe "GET /cities/:id" do
    it "returns the specified city" do
      create(:city, name: 'Sao Paulo', id: 1)

      get '/cities/1'

      expect(response.status).to eq 200

      body = JSON.parse(response.body)
      city_name = body['data']['attributes']['name']
      expect(city_name) == 'Sao Paulo'
    end
  end
end
