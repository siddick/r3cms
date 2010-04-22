Rails::Application.routes.draw do |map|

  # Root
  root :to => "site#index"

  # Authentication
  get   '/signin'   => "cms_auth#signin", 	:as => :signin
  post  '/signin'   => "cms_auth#signin_submit",:as => :signin_submit
  get   '/signup'   => "cms_auth#signup",	:as => :signup
  post  '/signup'   => "cms_auth#signup_submit",:as => :signup_submit
  get	'/signout'  => "cms_auth#signout",	:as => :signout

  # default blogs
  get   '/blog'   => "site/blog#index",  :site => "blog",  :as => :blog
  get   '/admin'  => "site/admin#index", :site => "admin", :as => :admin 
  
end
