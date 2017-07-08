module V1
  class ListGiftsController < ApplicationController
    before_action :set_list_gift, only: [:show, :edit]

    #GET /list_gifts
    def index
      cache_control
      render json: @list_gifts = finder.all(get_model_name, current_v1_user.id).order(:name)# if valid_token
    end

    #GET /list_gifts/1
    def show
      cache_control
      render json: @list_gift# if valid_token
    end

    #POST /list_gifts
    def create
      @list_gift, code, _location = creator.create(get_model_name, list_gift_params)
      render json: @list_gift, status: code, location: @list_gift
    end

    # PATCH/PUT /list_gifts/1
    def update
      @list_gift, code, _location = updater.update(get_model_name, list_gift_params)
      render json: @list_gift, status: code, location: @list_gift
    end

    private
    def set_list_gift
      @list_gift = finder.only(get_model_name, params[:id], current_v1_user.id)
    end

    def list_gift_params
      params[:list_gift] = ActiveModelSerializers::Deserialization.jsonapi_parse(params) if params[:data].present?
      params.require(:list_gift).permit(:user_id, :contact_id, :name, :image, :celebration)
    end

    def finder
      @finder ||= V1::ListGifts::FinderService.new
    end

    def creator
      @creator ||= V1::ListGifts::CreatorService.new
    end

    def updater
      @updater ||= V1::ListGifts::UpdaterService.new
    end

    def valid_token
      @resource.valid_token?(extract_token(request), extract_client(request))
    end
  end
end
