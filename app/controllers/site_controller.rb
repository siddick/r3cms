class SiteController < ApplicationController
  def index
    system_config = CmsConfiguration.find_by_name( "system" )
    if( system_config and system_config.config )
      default_site = system_config.config[:default_site]
      handle_default_site( default_site )
    else
      render :text => "Try: rake db:migrate", :status => 500
    end
  end
private 
  def handle_default_site( default_site )
      if( default_site )
        redirect_to :controller => "site/#{default_site}", :site => default_site
      else
        site = CmsSite.where( " name != ? ", "admin" ).first 
        if( site )
          redirect_to :controller => "site/#{site.name}", :site => site.name
        else
          render :text => "Site not found!!", :status => 404
        end
      end
  end
  
end
