class AccomodationsController < ApplicationController
  before_action :set_accomodation, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:index, :show]

  # GET /accomodations
  # GET /accomodations.json
  def index
    @accomodations = Accomodation.all
  end

  def my_accomodations
    @accomodations = Accomodation.where(user_id:current_user.user_id)
  end

  # GET /accomodations/1
  # GET /accomodations/1.json
  def show
  end

  # GET /accomodations/new
  def new
    @accomodation = current_user.accomodations.build
  end

  # GET /accomodations/1/edit
  def edit
  end

  # POST /accomodations
  # POST /accomodations.json
  def create
    @accomodation = current_user.accomodations.build(accomodation_params)

    respond_to do |format|
      if @accomodation.save
        format.html { redirect_to @accomodation, notice: 'El hospedaje fue creado correctamente.' }
        format.json { render :show, status: :created, location: @accomodation }
      else
        format.html { render :new }
        format.json { render json: @accomodation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accomodations/1
  # PATCH/PUT /accomodations/1.json
  def update
    respond_to do |format|
      if @accomodation.update(accomodation_params)
        format.html { redirect_to @accomodation, notice: 'El hospedaje fue modificado correctamente.' }
        format.json { render :show, status: :ok, location: @accomodation }
      else
        format.html { render :edit }
        format.json { render json: @accomodation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accomodations/1
  # DELETE /accomodations/1.json
  def destroy
    @accomodation.destroy
    respond_to do |format|
      format.html { redirect_to accomodations_url, notice: 'El hospedaje fue eliminado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accomodation
      @accomodation = Accomodation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accomodation_params
      params.require(:accomodation).permit(:titulo, :descripcion, :accommodation_type_id, :imagen, :capacidad)
    end
end
