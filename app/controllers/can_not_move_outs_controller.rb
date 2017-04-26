class CanNotMoveOutsController < ApplicationController
  before_action :set_can_not_move_out, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /can_not_move_outs
  # GET /can_not_move_outs.json
  def index
    @can_not_move_outs = CanNotMoveOut.all
  end

  # GET /can_not_move_outs/1
  # GET /can_not_move_outs/1.json
  def show
  end

  # GET /can_not_move_outs/new
  def new
    unless current_user.admin?
      redirect_to can_not_move_outs_path, :alert => "Access denied."
    else
    @can_not_move_out = CanNotMoveOut.new
  end
end
  # GET /can_not_move_outs/1/edit
  def edit
    unless current_user.admin?
      redirect_to can_not_move_outs_path, :alert => "Access denied."
      end
  end

  # POST /can_not_move_outs
  # POST /can_not_move_outs.json
  def create
    @can_not_move_out = CanNotMoveOut.new(can_not_move_out_params)

    respond_to do |format|
      if @can_not_move_out.save
        format.html { redirect_to @can_not_move_out, notice: 'Can not move out was successfully created.' }
        format.json { render :show, status: :created, location: @can_not_move_out }
      else
        format.html { render :new }
        format.json { render json: @can_not_move_out.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /can_not_move_outs/1
  # PATCH/PUT /can_not_move_outs/1.json
  def update
    respond_to do |format|
      if @can_not_move_out.update(can_not_move_out_params)
        format.html { redirect_to @can_not_move_out, notice: 'Can not move out was successfully updated.' }
        format.json { render :show, status: :ok, location: @can_not_move_out }
      else
        format.html { render :edit }
        format.json { render json: @can_not_move_out.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /can_not_move_outs/1
  # DELETE /can_not_move_outs/1.json
  def destroy
    unless current_user.admin?
      redirect_to can_not_move_outs_path, :alert => "Access denied."
      else
    @can_not_move_out.destroy
    respond_to do |format|
      format.html { redirect_to can_not_move_outs_url, notice: 'Can not move out was successfully destroyed.' }
      format.json { head :no_content }
    end
    end
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_can_not_move_out
      @can_not_move_out = CanNotMoveOut.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def can_not_move_out_params
      params.require(:can_not_move_out).permit(:CompanyName, :Equipment, :Reason)
    end
end
