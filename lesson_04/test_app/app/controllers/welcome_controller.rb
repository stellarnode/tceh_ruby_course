class WelcomeController < ApplicationController
  
  def index
  end

  def display_number
  	@number = params[:id]
  end

end
