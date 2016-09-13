class SearchController < ApplicationController
  def create
  	palabra = "%#{params[:keyword]}%"

  	@accomodations = Accomodation.where("name LIKE ? OR description LIKE ?",palabra,palabra)
  	
  	respond_to do |format|
  		format.html { redirect_to root_path }
  		format.json { render json: @accomodations}
  		format.js
  	end	
  end
end
