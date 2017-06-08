class ApplicationController < ActionController::API
  # before_action :ensure_json_request
  #
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
