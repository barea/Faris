class StoresController < ApplicationController
  before_action :set_store, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  # GET /stores
  # GET /stores.json
  def index
    @stores = if params[:title]
                Store.where('name like?', "%#{params[:title]}%")
               else
                 Store.all
               end
  end

  #Owner srores list
  def myStore
    @stores = Store.where(user_id: current_user.id)
  end


  # GET /stores/new
  def new
    @store = Store.new
  end


  # POST /stores
  # POST /stores.json
  def create
    @store = Store.new(store_params)
    @store.user_id = current_user.id
    current_user.update!(type: "Owner")

    respond_to do |format|
      if @store.save
         format.html { redirect_to myStore_stores_path, notice: 'Store was successfully created.' }
        format.json { render :show, status: :created, location: @store }
      else
        format.html { render :new }
        format.json { render json: @store.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store
      @store = Store.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def store_params
      params.require(:store).permit(:user_id, :name, :location, :link, :title)
    end
end
