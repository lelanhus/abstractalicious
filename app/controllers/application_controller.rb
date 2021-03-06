class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  
  # overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    root_url
  end
end
