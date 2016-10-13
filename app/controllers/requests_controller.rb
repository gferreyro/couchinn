class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @requests = Request.all
    respond_with(@requests)
  end

  def show
    respond_with(@request)
  end

  def new
    @request = Request.new
    @request.user_id = params[:user_id]
    @request.accomodation_id = params[:accomodation_id]
    respond_with(@request)
  end

  def edit
  end

  def create
    @request = Request.new(request_params)
    @request.save
    respond_with(@request.accomodation)
  end

  def update
    @request.update(request_params)
    respond_with(@request)
  end

  def destroy
    @request.destroy
    respond_with(@request)
  end

  private
    def set_request
      @request = Request.find(params[:id])
    end

    def request_params
      params.require(:request).permit(:user_id, :accomodation_id, :from, :to, :status)
    end
end
