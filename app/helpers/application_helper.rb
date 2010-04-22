module ApplicationHelper
  def current_user
    session[:user] ||= guest_account
  end

  def guest_account
    CmsUser.find_by_username( "guest" )
  end
end
