class SportsController < ApplicationController
  before_action :set_sport, only: [:show, :update, :destroy]

  # GET /sports
  def index
    @sports = Sport.all

    render json: @sports
  end

  # GET /sports/1
  def show
    render json: @sport
  end

  # POST /sports
  def create
    @sport = Sport.new(sport_params)

    if @sport.save
      render json: @sport, status: :created, location: @sport
    else
      render json: @sport.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sports/1
  def update
    if @sport.update(sport_params)
      render json: @sport
    else
      render json: @sport.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sports/1
  def destroy
    @sport.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sport
      @sport = Sport.find(params[:id])
    end

    def sport_params
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
   #    def sport_params
   #      deserialized_params.permit(:name, :url, :description, :why, :numofvisits, :photo, :notes, :city_id, :hide)
   #    end
   #
end
