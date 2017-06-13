class ApplicationController < ActionController::API
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  # protect_from_forgery with: :null_session
  include DeviseTokenAuth::Concerns::SetUserByToken

  # before_action :authenticate_user!
  # before_action :ensure_json_request


  # def ensure_json_request
  #   if request.headers["Content-Type"] =~ /vnd\.api\+json/
  #     if request.headers["Accept"] =~ /vnd\.api\+json/
  #        return
  #     else
  #       render :nothing => true, :status => 406
  #     end
  #   else
  #     render :nothing => true, :status => 415
  #   end
  # end
end
