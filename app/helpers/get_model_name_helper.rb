module GetModelNameHelper
  def get_model_name
    parent = self.class.parent.name
    self_name = self.controller_name.classify
    (parent + '::' + self_name).constantize
  end
end
