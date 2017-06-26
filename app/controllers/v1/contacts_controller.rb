module V1
  class ContactsController < ApplicationController
    before_action :set_contact, only: [:show]

    #GET /contacts
    def index
      render json: @contacts = finder.all(get_model_name, current_v1_user.id).order(:name)# if valid_token
    end

    #GET /contacts/1
    def show
      render json: @contact# if valid_token
    end

    #POST /contacts
    def create
      @contact, code, _location = creator.create(get_model_name, contact_params)
      render json: @contact, status: code, location: @contact
    end

    # PATCH/PUT /contacts/1
    def update
      @contact, code, _location = updater.update(get_model_name, contact_params)
      render json: @contact, status: code, location: @contact
    end

    private
    def set_contact
      @contact = finder.only(get_model_name, params[:id], current_v1_user.id)
    end

    def contact_params
      params[:contact] = ActiveModelSerializers::Deserialization.jsonapi_parse(params) if params[:data].present?
      params.require(:contact).permit(:user_id, :name, :social_kind_id, :profile, :active)
    end

    def finder
      @finder ||= V1::Contacts::FinderService.new
    end

    def creator
      @creator ||= V1::Contacts::CreatorService.new
    end

    def updater
      @updater ||= V1::Contacts::UpdaterService.new
    end

    def valid_token
      @resource.valid_token?(extract_token(request), extract_client(request))
    end
  end
end
