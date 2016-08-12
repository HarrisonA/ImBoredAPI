require 'test_helper'

class ParksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @park = parks(:one)
  end

  test "should get index" do
    get parks_url, as: :json
    assert_response :success
  end

  test "should create park" do
    assert_difference('Park.count') do
      post parks_url, params: { park: { city_id: @park.city_id, description: @park.description, hide: @park.hide, name: @park.name, notes: @park.notes, numofvisits: @park.numofvisits, photo: @park.photo, url: @park.url, why: @park.why } }, as: :json
    end

    assert_response 201
  end

  test "should show park" do
    get park_url(@park), as: :json
    assert_response :success
  end

  test "should update park" do
    patch park_url(@park), params: { park: { city_id: @park.city_id, description: @park.description, hide: @park.hide, name: @park.name, notes: @park.notes, numofvisits: @park.numofvisits, photo: @park.photo, url: @park.url, why: @park.why } }, as: :json
    assert_response 200
  end

  test "should destroy park" do
    assert_difference('Park.count', -1) do
      delete park_url(@park), as: :json
    end

    assert_response 204
  end
end