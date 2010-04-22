class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'



protected  
  # get current login user
  def current_user( user = :get )
    if( user == :get )
      session[:user] ||= guest_account
    else
      session[:user] = user
    end
  end

  def current_site
  end

  def check_user_site
    user = current_user
    site = params[:site]
    unless( user.allow_sites.include?( "all" ) ||  user.allow_sites.include?( site ) )
      redirect_to_signin
    end
  end

  def redirect_to_signin
    redirect_to signin_path( :from => url_for( :controller => "/site/#{params[:site]}", :site => params[:site] ) )
  end
  
  def guest_account
    CmsUser.find_by_username( "guest" )
  end

end
