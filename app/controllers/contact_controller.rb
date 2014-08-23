class ContactController < ApplicationController
  def index
  end

  def save
  	@first_name = params[:first_name]
  	@last_name = params[:last_name]
  	@email = params[:email]
  end
end
