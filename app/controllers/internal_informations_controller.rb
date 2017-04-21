class InternalInformationsController < ApplicationController
  before_action :set_internal_information, only: [:show, :edit, :update, :destroy]

  # GET /internal_informations
  # GET /internal_informations.json
  def index
    @internal_informations = InternalInformation.all
  end

  # GET /internal_informations/1
  # GET /internal_informations/1.json
  def show
  end

  # GET /internal_informations/new
  def new
    @internal_information = InternalInformation.new
  end

  # GET /internal_informations/1/edit
  def edit
  end

  # POST /internal_informations
  # POST /internal_informations.json
  def create
    @internal_information = InternalInformation.new(internal_information_params)

    respond_to do |format|
      if @internal_information.save
        format.html { redirect_to @internal_information, notice: 'Internal information was successfully created.' }
        format.json { render :show, status: :created, location: @internal_information }
      else
        format.html { render :new }
        format.json { render json: @internal_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /internal_informations/1
  # PATCH/PUT /internal_informations/1.json
  def update
    respond_to do |format|
      if @internal_information.update(internal_information_params)
        format.html { redirect_to @internal_information, notice: 'Internal information was successfully updated.' }
        format.json { render :show, status: :ok, location: @internal_information }
      else
        format.html { render :edit }
        format.json { render json: @internal_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /internal_informations/1
  # DELETE /internal_informations/1.json
  def destroy
    @internal_information.destroy
    respond_to do |format|
      format.html { redirect_to internal_informations_url, notice: 'Internal information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_internal_information
      @internal_information = InternalInformation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def internal_information_params
      params.require(:internal_information).permit(:Title,:video)
    end
end
