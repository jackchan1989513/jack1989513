class VendorListsController < ApplicationController
  before_action :set_vendor_list, only: [:show, :edit, :update, :destroy]

  # GET /vendor_lists
  # GET /vendor_lists.json
  def index
    @vendor_lists = VendorList.all
  end

  # GET /vendor_lists/1
  # GET /vendor_lists/1.json
  def show
  end

  # GET /vendor_lists/new
  def new
    unless current_user.admin?
      redirect_to vendor_lists_path, :alert => "Access denied."
    else
    @vendor_list = VendorList.new
    end
    end

  # GET /vendor_lists/1/edit
  def edit
    unless current_user.admin?
      redirect_to vendor_lists_path, :alert => "Access denied."
    end
  end

  # POST /vendor_lists
  # POST /vendor_lists.json
  def create
    @vendor_list = VendorList.new(vendor_list_params)

    respond_to do |format|
      if @vendor_list.save
        format.html { redirect_to @vendor_list, notice: 'Vendor list was successfully created.' }
        format.json { render :show, status: :created, location: @vendor_list }
      else
        format.html { render :new }
        format.json { render json: @vendor_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vendor_lists/1
  # PATCH/PUT /vendor_lists/1.json
  def update
    respond_to do |format|
      if @vendor_list.update(vendor_list_params)
        format.html { redirect_to @vendor_list, notice: 'Vendor list was successfully updated.' }
        format.json { render :show, status: :ok, location: @vendor_list }
      else
        format.html { render :edit }
        format.json { render json: @vendor_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vendor_lists/1
  # DELETE /vendor_lists/1.json
  def destroy
    unless current_user.admin?
      redirect_to vendor_lists_path, :alert => "Access denied."
    else
    @vendor_list.destroy
    respond_to do |format|
      format.html { redirect_to vendor_lists_url, notice: 'Vendor list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendor_list
      @vendor_list = VendorList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vendor_list_params
      params.require(:vendor_list).permit(:Name, :Tel, :WorkTime, :Type)
    end
end
