class SessionsController < ApplicationController
  def create
  	user = Session.from_omniauth(env["omniauth.auth"])
    session[:omniauth] = user.id
    #User.userfrom_omniauth(user")
    redirect_to root_url
  end
	def destroy
    session[:omniauth] = nil
    redirect_to root_url
  end
end