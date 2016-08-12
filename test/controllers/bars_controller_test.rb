require 'test_helper'

class BarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bar = bars(:one)
  end

  test "should get index" do
    get bars_url, as: :json
    assert_response :success
  end

  test "should create bar" do
    assert_difference('Bar.count') do
      post bars_url, params: { bar: { city_id: @bar.city_id, description: @bar.description, hide: @bar.hide, name: @bar.name, notes: @bar.notes, numofvisits: @bar.numofvisits, photo: @bar.photo, url: @bar.url, why: @bar.why } }, as: :json
    end

    assert_response 201
  end

  test "should show bar" do
    get bar_url(@bar), as: :json
    assert_response :success
  end

  test "should update bar" do
    patch bar_url(@bar), params: { bar: { city_id: @bar.city_id, description: @bar.description, hide: @bar.hide, name: @bar.name, notes: @bar.notes, numofvisits: @bar.numofvisits, photo: @bar.photo, url: @bar.url, why: @bar.why } }, as: :json
    assert_response 200
  end

  test "should destroy bar" do
    assert_difference('Bar.count', -1) do
      delete bar_url(@bar), as: :json
    end

    assert_response 204
  end
end
