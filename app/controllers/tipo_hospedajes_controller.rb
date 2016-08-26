class TipoHospedajesController < ApplicationController
  before_action :set_tipo_hospedaje, only: [:show, :edit, :update, :destroy]

  # GET /tipo_hospedajes
  # GET /tipo_hospedajes.json
  def index
    @tipo_hospedajes = TipoHospedaje.all
  end

  # GET /tipo_hospedajes/1
  # GET /tipo_hospedajes/1.json
  def show
  end

  # GET /tipo_hospedajes/new
  def new
    @tipo_hospedaje = TipoHospedaje.new
  end

  # GET /tipo_hospedajes/1/edit
  def edit
  end

  # POST /tipo_hospedajes
  # POST /tipo_hospedajes.json
  def create
    @tipo_hospedaje = TipoHospedaje.new(tipo_hospedaje_params)

    respond_to do |format|
      if @tipo_hospedaje.save
        format.html { redirect_to @tipo_hospedaje, notice: 'Tipo hospedaje was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_hospedaje }
      else
        format.html { render :new }
        format.json { render json: @tipo_hospedaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_hospedajes/1
  # PATCH/PUT /tipo_hospedajes/1.json
  def update
    respond_to do |format|
      if @tipo_hospedaje.update(tipo_hospedaje_params)
        format.html { redirect_to @tipo_hospedaje, notice: 'Tipo hospedaje was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_hospedaje }
      else
        format.html { render :edit }
        format.json { render json: @tipo_hospedaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_hospedajes/1
  # DELETE /tipo_hospedajes/1.json
  def destroy
    @tipo_hospedaje.destroy
    respond_to do |format|
      format.html { redirect_to tipo_hospedajes_url, notice: 'Tipo hospedaje was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_hospedaje
      @tipo_hospedaje = TipoHospedaje.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_hospedaje_params
      params.require(:tipo_hospedaje).permit(:descripcion,:estado)
    end
end
