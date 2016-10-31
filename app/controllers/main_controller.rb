class MainController < ApplicationController

  def privacidad
  end
  def premium
  	current_user.update(premium:true)
  end
end
