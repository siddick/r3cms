class Site::AdminController < ApplicationController
  before_filter :check_user_site 
  def index
  end
end
