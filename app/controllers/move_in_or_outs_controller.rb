class MoveInOrOutsController < ApplicationController
  before_action :set_move_in_or_out, only: [:show, :edit, :update, :destroy]

  # GET /move_in_or_outs
  # GET /move_in_or_outs.json
  def index
    @move_in_or_outs = MoveInOrOut.all
  end

  # GET /move_in_or_outs/1
  # GET /move_in_or_outs/1.json
  def show
  end

  # GET /move_in_or_outs/new
  def new
    @move_in_or_out = MoveInOrOut.new
  end

  # GET /move_in_or_outs/1/edit
  def edit
  end

  # POST /move_in_or_outs
  # POST /move_in_or_outs.json
  def create
    @move_in_or_out = MoveInOrOut.new(move_in_or_out_params)

    respond_to do |format|
      if @move_in_or_out.save
        format.html { redirect_to @move_in_or_out, notice: 'Move in or out was successfully created.' }
        format.json { render :show, status: :created, location: @move_in_or_out }
      else
        format.html { render :new }
        format.json { render json: @move_in_or_out.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /move_in_or_outs/1
  # PATCH/PUT /move_in_or_outs/1.json
  def update
    respond_to do |format|
      if @move_in_or_out.update(move_in_or_out_params)
        format.html { redirect_to @move_in_or_out, notice: 'Move in or out was successfully updated.' }
        format.json { render :show, status: :ok, location: @move_in_or_out }
      else
        format.html { render :edit }
        format.json { render json: @move_in_or_out.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /move_in_or_outs/1
  # DELETE /move_in_or_outs/1.json
  def destroy
    unless current_user.admin?
      redirect_to can_not_move_outs_path, :alert => "Access denied."
      else
    @move_in_or_out.destroy
    respond_to do |format|
      format.html { redirect_to move_in_or_outs_url, notice: 'Move in or out was successfully destroyed.' }
      format.json { head :no_content }
    end
    end
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_move_in_or_out
      @move_in_or_out = MoveInOrOut.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def move_in_or_out_params
      params.require(:move_in_or_out).permit(:Equipment, :IP, :InOrOut, :Date)
    end
end
