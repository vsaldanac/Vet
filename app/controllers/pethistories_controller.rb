class PethistoriesController < ApplicationController
  before_action :set_pethistory, only: [:show, :edit, :update, :destroy]

  # GET /pethistories
  # GET /pethistories.json
  def index
    @pethistories = Pethistory.all
  end

  # GET /pethistories/1
  # GET /pethistories/1.json
  def show
  end

  # GET /pethistories/new
  def new
    @pethistory = Pethistory.new
    @pets = Pet.pluck(:name, :id)
  end

  # GET /pethistories/1/edit
  def edit
  end

  # POST /pethistories
  # POST /pethistories.json
  def create
    @pethistory = Pethistory.new(pethistory_params)

    respond_to do |format|
      if @pethistory.save
        format.html { redirect_to @pethistory, notice: 'Pethistory was successfully created.' }
        format.json { render :show, status: :created, location: @pethistory }
      else
        format.html { render :new }
        format.json { render json: @pethistory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pethistories/1
  # PATCH/PUT /pethistories/1.json
  def update
    respond_to do |format|
      if @pethistory.update(pethistory_params)
        format.html { redirect_to @pethistory, notice: 'Pethistory was successfully updated.' }
        format.json { render :show, status: :ok, location: @pethistory }
      else
        format.html { render :edit }
        format.json { render json: @pethistory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pethistories/1
  # DELETE /pethistories/1.json
  def destroy
    @pethistory.destroy
    respond_to do |format|
      format.html { redirect_to pethistories_url, notice: 'Pethistory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pethistory
      @pethistory = Pethistory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pethistory_params
      params.require(:pethistory).permit(:weight, :height, :description, :pet_id)
    end
end
