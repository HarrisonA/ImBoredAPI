# rubocop:disable all

require 'rails_helper'

RSpec.describe City, type: :request do
   describe "GET /cities" do
     it "returns all the cities" do
       create(:city, name: 'New York')
       create(:city, name: 'Lagos')

       get '/cities'

       expect(response.status).to eq 200

       # puts "\n\nthe response: #{response.body}\n\n\n\n"

       # parse JSON into Ruby hash
       # Ex: From {"data":[{"id":"1", to {"data"=>[{"id"=>"1"
       body = JSON.parse(response.body)

       #puts "ruby hash #{body['data']}"

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

   describe "Correctly serializes JSON response from /cities" do
     it "format is correct" do
       create(:city, name: 'New York')
       create(:city, name: 'Lagos')

       get '/cities'

       expect(response.status).to eq 200

       body = JSON.parse(response.body)

       # There's got to be a better way to check the existence of keys!!!

       expect(body['data']).not_to be_nil
       expect(body['data'][0]['id']).not_to be_nil
       expect(body['data'][0]['type']).to eq "cities"
       expect(body['data'][0]['attributes']['name']).not_to be_nil
       expect(body['data'][0]['relationships']['travels']['data']).not_to be_nil
       expect(body['data'][0]['relationships']['movies']['data']).not_to be_nil
       expect(body['data'][0]['relationships']['restaurants']['data']).not_to be_nil
       expect(body['data'][0]['relationships']['parks']['data']).not_to be_nil
       expect(body['data'][0]['relationships']['bars']['data']).not_to be_nil
       expect(body['data'][0]['relationships']['sports']['data']).not_to be_nil
       expect(body['data'][0]['relationships']['families']['data']).not_to be_nil

       # Make sure the second city is in the same format
       expect(body['data'][1]['id']).not_to be_nil
       expect(body['data'][1]['type']).to eq "cities"
       expect(body['data'][1]['attributes']['name']).not_to be_nil
       expect(body['data'][1]['relationships']['travels']['data']).not_to be_nil

       # Small error with this loop (key variable)  - Ruby syntaxviolation?
      #  body['data'][1]['relationships'].each do |key|
      #    expect(body['data'][1]['relationships'][key]['data']).not_to be_nil
      #  end

     end
   end
 end
