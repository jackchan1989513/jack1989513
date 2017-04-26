class RackInHallsController < ApplicationController
  before_action :set_rack_in_hall, only: [:show, :edit, :update, :destroy]

  # GET /rack_in_halls
  # GET /rack_in_halls.json
  def index
    @rack_in_halls = RackInHall.all
  end

  # GET /rack_in_halls/1
  # GET /rack_in_halls/1.json
  def show
  end

  # GET /rack_in_halls/new
  def new
    @rack_in_hall = RackInHall.new
  end

  # GET /rack_in_halls/1/edit
  def edit
  end

  # POST /rack_in_halls
  # POST /rack_in_halls.json
  def create
    @rack_in_hall = RackInHall.new(rack_in_hall_params)

    respond_to do |format|
      if @rack_in_hall.save
        format.html { redirect_to @rack_in_hall, notice: 'Rack in hall was successfully created.' }
        format.json { render :show, status: :created, location: @rack_in_hall }
      else
        format.html { render :new }
        format.json { render json: @rack_in_hall.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rack_in_halls/1
  # PATCH/PUT /rack_in_halls/1.json
  def update
    respond_to do |format|
      if @rack_in_hall.update(rack_in_hall_params)
        format.html { redirect_to @rack_in_hall, notice: 'Rack in hall was successfully updated.' }
        format.json { render :show, status: :ok, location: @rack_in_hall }
      else
        format.html { render :edit }
        format.json { render json: @rack_in_hall.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rack_in_halls/1
  # DELETE /rack_in_halls/1.json
  def destroy
    unless current_user.admin?
      redirect_to rack_in_halls_path, :alert => "Access denied."
      else
    @rack_in_hall.destroy
    respond_to do |format|
      format.html { redirect_to rack_in_halls_url, notice: 'Rack in hall was successfully destroyed.' }
      format.json { head :no_content }
    end
    end
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rack_in_hall
      @rack_in_hall = RackInHall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rack_in_hall_params
      params.require(:rack_in_hall).permit(:RackNo, :CompanyName, :Equipment)
    end
end
