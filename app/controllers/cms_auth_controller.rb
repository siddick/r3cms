class CmsAuthController < ApplicationController

  # GET /signin
  def signin
    session[:redirect_url] = params[:from]  if params[:from] 
  end

  # POST /signin
  def signin_submit
    if( params[:user] )
      user = CmsUser.authenticate( params[:user] )
      if( user )
        current_user( user )
        redirect_url = session[:redirect_url] || root_path
        session[:redirect_url] = nil
        redirect_to redirect_url
      else
        redirect_to signin_path, :notice => "Wrong Username or Password!!!" 
      end
    end
  end

  # GET /signup
  def signup
  end

  # POST /signup
  def signup_submit
  end

  # GET /signout
  def signout
    current_user( nil )
    redirect_to root_path
  end

end
