class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  include ApplicationHelper

  # before_action :authenticate_v1_user!, except: [:new, :create]

  # before_action :ensure_json_request

  def ensure_json_request
    unless request.headers["Accept"] =~ /vnd\.api\+json/
      render :nothing => true, :status => 406
    else
      unless request.get?
        return if request.headers["Content-Type"] =~ /vnd\.api\+json/
        render :nothing => true, :status => 415
      end
    end
  end
end
