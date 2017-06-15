module ApplicationHelper

  def skip_authorize_user class_name
    class_name.constantize.new.class.skip_before_action :authenticate_user, raise: false
  end

  def token_sign_in user
    auth_headers = user.create_new_auth_token
    request.headers.merge!(auth_headers)
  end

end
