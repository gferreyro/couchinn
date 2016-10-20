class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :edit, :update, :destroy, :accept, :reject]
  before_action :my_requests, only: [:my]

  respond_to :html

  def index
    @requests = Request.all
    respond_with(@requests)
  end

  def my
    respond_with(my_requests)
  end

  def show
    respond_with(@request)
  end

  def new
    @request = Request.new(user_id:current_user.id, accomodation_id:params[:accomodation_id])
    respond_with(@request)
  end

  def edit
  end

  def create
    @request = Request.new(request_params)
    if (Request.where(status:"Aceptada", accomodation_id:@request.accomodation_id).where(from: (@request.from..@request.to)).count > 0) or (Request.where(status:"Aceptada", accomodation_id:@request.accomodation_id).where(to: (@request.from..@request.to)).count > 0)
      flash[:notice] = "No están disponibles las fechas seleccionadas"
      redirect_to request.referer
    else
      @request.save
      flash[:notice] = "Solicitud enviada correctamente. Aguarde que sea respondida."
      respond_with(@request.accomodation)
    end
  end

  def update
    @request.update(request_params)
    respond_with(@request)
  end

  def accept
    @request.update(status:"Aceptada")
    Request.where(status:"Pendiente", accomodation_id:@request.accomodation_id).where(from: (@request.from..@request.to)).each do |req|
      req.update(status:"Rechazada")
    end
    Request.where(status:"Pendiente", accomodation_id:@request.accomodation_id).where(to: (@request.from..@request.to)).each do |req|
      req.update(status:"Rechazada")
    end
    flash[:notice] = 'Solicitud aceptada correctamente.'
    redirect_to my_requests_path
  end

  def reject
    @request.update(status:"Rechazada")
    flash[:notice] = 'Solicitud rechazada correctamente.'
    redirect_to my_requests_path
  end

  def destroy
    @request.destroy
    respond_with(@request)
  end

  private
    def set_request
      @request = Request.find(params[:id])
    end

    def my_requests
      @requests = Request.where(user_id:current_user.id)
    end

    def request_params
      params.require(:request).permit(:user_id, :accomodation_id, :from, :to, :status)
    end
end
