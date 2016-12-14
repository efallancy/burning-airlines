class FlightsController < ApplicationController
  before_action :set_flight, only: [:show, :edit, :update, :destroy]

  # GET /flights
  # GET /flights.json
  def index
    @flights = Flight.all
  end

  # GET /flights/1
  # GET /flights/1.json
  def show
  end

  # GET /flights/new
  def new
    @flight = Flight.new
  end

  # GET /flights/1/edit
  def edit
  end

  # POST /flights
  # POST /flights.json
  def create
    @flight = Flight.new(flight_params)

    # Used to check the date and time being set
    flight_datetime_time = Time.new( flight_params[ "flight_datetime(1i)" ].to_i,
                                    flight_params[ "flight_datetime(2i)" ].to_i,
                                    flight_params[ "flight_datetime(3i)" ].to_i,
                                    flight_params[ "flight_datetime(4i)" ].to_i,
                                    flight_params[ "flight_datetime(5i)" ].to_i )

    respond_to do |format|
      # Only if the flight date and time set to greater than current date and time,
      #  then proceed to create flight
      if flight_datetime_time > DateTime.now.to_time
        if @flight.save
          p "I was here just now"
          format.html { redirect_to @flight, notice: 'Flight was successfully created.' }
          format.json { render :show, status: :created, location: @flight }
        end
      else
        flash[ :notice ] = "Date or time should be greater than current date and time"
        format.html { render :new }
        format.json { render json: @flight.errors,
                             status: :unprocessable_entity,
                             :msg => "Date or time should be greater than current date and time" }
      end
    end
  end

  # PATCH/PUT /flights/1
  # PATCH/PUT /flights/1.json
  def update
    # Used to check the date and time being set
    flight_datetime_time = Time.new( flight_params[ "flight_datetime(1i)" ].to_i,
                                    flight_params[ "flight_datetime(2i)" ].to_i,
                                    flight_params[ "flight_datetime(3i)" ].to_i,
                                    flight_params[ "flight_datetime(4i)" ].to_i,
                                    flight_params[ "flight_datetime(5i)" ].to_i )

    respond_to do |format|
      # Only if it is set to have the time being updated greater than current time,
      #   then can proceed on updating it
      if flight_datetime_time > DateTime.now.to_time
        if @flight.update(flight_params)
          format.html { redirect_to @flight, notice: 'Flight was successfully updated.' }
          format.json { render :show, status: :ok, location: @flight }
        end
      else
        flash[ :notice ] = "Date or time should be greater than current date and time"
        format.html { render :edit }
        format.json { render json: @flight.errors,
                             status: :unprocessable_entity,
                             :msg => "Date or time should be greater than current date and time" }
      end
    end
  end

  # DELETE /flights/1
  # DELETE /flights/1.json
  def destroy
    @flight.destroy
    respond_to do |format|
      format.html { redirect_to flights_url, notice: 'Flight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flight
      @flight = Flight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flight_params
      params.require(:flight).permit(:flight_num, :origin, :destination, :flight_datetime, :airplane_id)
    end
end
