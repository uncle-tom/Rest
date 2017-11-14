class HousephotosController < ApplicationController
  before_action :set_housephoto, only: [:show, :edit, :update, :destroy]

  # GET /housephotos
  # GET /housephotos.json
  def index
    @housephotos = Housephoto.all
  end

  # GET /housephotos/1
  # GET /housephotos/1.json
  def show
  end

  # GET /housephotos/new
  def new
    @housephoto = Housephoto.new
  end

  # GET /housephotos/1/edit
  def edit
  end

  # POST /housephotos
  # POST /housephotos.json
  def create
    @housephoto = Housephoto.new(housephoto_params)

    respond_to do |format|
      if @housephoto.save
        format.html { redirect_to @housephoto, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @housephoto }
      else
        format.html { render :new }
        format.json { render json: @housephoto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /housephotos/1
  # PATCH/PUT /housephotos/1.json
  

  # DELETE /housephotos/1
  # DELETE /housephotos/1.json
  def destroy
    @housephoto.destroy
    respond_to do |format|
      format.html { redirect_to housephotos_url, notice: 'Housephoto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_housephoto
      @housephoto = Housephoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def housephoto_params
      params.require(:housephoto).permit(:house_id, {houseimg: []})
    end
end
