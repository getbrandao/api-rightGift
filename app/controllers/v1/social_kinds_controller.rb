module V1
  class SocialKindsController < ApplicationController
    # before_action :authenticate_v1_user!
    before_action :set_social_kind, only: [:show]

    #GET /social_kinds
    def index
      render json: @social_kinds = find.all(get_model_name)
    end

    #GET /social_kinds/1
    def show
      render json: @social_kind
    end

    private
    def set_social_kind
      @social_kind = find.only(get_model_name, params[:id])
    end

    def find
      @find ||= V1::SocialKinds::FindService.new
    end

  end
end
