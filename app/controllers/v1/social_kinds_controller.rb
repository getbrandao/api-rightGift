module V1
  class SocialKindsController < ApplicationController
    before_action :set_social_kind, only: [:show]

    #GET /social_kinds
    def index
      cache_control
      render json: @social_kinds = finder.all(get_model_name).order(:name)
    end

    #GET /social_kinds/1
    def show
      cache_control
      render json: @social_kind
    end

    private
    def set_social_kind
      unless params[:contact_id].present?
        @social_kind = finder.only(get_model_name, params[:id])
      else
        @social_kind = finder.from_contact(get_model_name, params[:contact_id])
      end
    end

    def finder
      @finder ||= V1::SocialKinds::FinderService.new
    end
  end
end
