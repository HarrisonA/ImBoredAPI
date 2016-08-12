class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :update, :destroy]

  # GET /restaurants
  def index
    @restaurants = Restaurant.all

    render json: @restaurants
  end

  # GET /restaurants/1
  def show
    render json: @restaurant
  end

  # POST /restaurants
  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      render json: @restaurant, status: :created, location: @restaurant
    else
      render json: @restaurant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /restaurants/1
  def update
    if @restaurant.update(restaurant_params)
      render json: @restaurant
    else
      render json: @restaurant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /restaurants/1
  def destroy
    @restaurant.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    def restaurant_params
      ActiveModelSerializers::Deserialization.jsonapi_parse(params)
    end

    # Only allow a trusted parameter "white list" through.
    # NOTE: UPDATE THE ABOVE LATER with something like:

   #    def deserialized_params
   #      ActionController::Parameters.new(
   #        ActiveModelSerializers::Deserialization.jsonapi_parse!(params)
   #      )
   #    end
   #
   #    def restaurant_params
   #      deserialized_params.permit(:name, :url, :description, :why, :numofvisits, :photo, :notes, :city_id, :hide)
   #    end
   #
end
