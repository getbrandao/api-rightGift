class SocialKindsController < ApplicationController
  def index
    #GET /social_kinds
    @social_kinds = SocialKind.all
    render json: @social_kinds
  end
end
