class CheckinsController < ApplicationController
  before_action :set_checkin, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!



  #customer check in list
  def history
    @checkins = Checkin.where(user_id: current_user.id)
  end

  #list of store customers
  def customers
    @checkin = Checkin.where(store_id: params[:store_id]).all
  end

  # GET /checkins/new
  def new
    @checkin = Checkin.new
  end

  # GET /checkins/1/edit
  def edit
  end

  # POST /checkins
  # POST /checkins.json
  def create

    @checkin = Checkin.new(checkin_params)
    @checkin.user_id = current_user.id
    @checkin.datetime = DateTime.now

    respond_to do |format|
      if @checkin.save!
        format.html { redirect_to stores_path, notice: 'Checkin was successfully created.' }
        format.json { render :show, status: :created, location: @checkin }
      else
        format.html { render :new }
        format.json { render json: @checkin.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_checkin
      @checkin = Checkin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def checkin_params
      params.require(:checkin).permit(:store_id, :user_id, :temp, :datetime)
    end
end
