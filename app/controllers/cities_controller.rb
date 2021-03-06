class CitiesController < ApplicationController
  before_action :set_city, only: [:show, :update, :destroy]

  # GET /cities
  def index
    @cities = City.all

    render json: @cities
  end

  # GET /cities/1
  def show
    render json: @city
  end

  # POST /cities
  def create
    @city = City.new(city_params)

    if @city.save
      render json: @city, status: :created, location: @city
    else
      render json: @city.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cities/1
  def update
    if @city.update(city_params)
      render json: @city
    else
      render json: @city.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cities/1
  def destroy
    @city.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city
      @city = City.find(params[:id])
    end

    # deserialize the incoming parameters – turn them from JSON API into
    # a standard Ruby hash
    def city_params
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
   #    def city_params
   #      deserialized_params.permit(:name)
   #    end
   #
end
