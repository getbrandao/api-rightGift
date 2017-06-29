module ApplicationHelper

  def get_model_name
    parent = self.class.parent.name
    self_name = self.controller_name.classify
    (parent + '::' + self_name).constantize
  end

  def extract_token request
    request.headers['access-token']
  end

  def extract_client request
    request.headers['client']
  end

  def cache_control
    expires_in 45.seconds, public: true
  end

end
