require 'rails_helper'

RSpec.describe V1::ListGiftsController, '#create', type: [:controller, :list_gift] do
  let(:login) {create(:login)}

  before do
    token_sign_in(login)
    @request.headers['Content-Type'] = 'application/vnd.api+json'
    @request.headers['Accept'] = 'application/vnd.api+json'
  end

  context "Accessing the create action" do
    let(:list_gift_params) {attributes_for(:list_gifts)}
    before do
      post :create, params: list_gift_params, format: :json
    end

    describe "should render :create template" do
      it 'returns successful 201 response' do
        expect(response).to have_http_status(201)
        expect(response.content_type).to eq('application/vnd.api+json')
      end
    end
  end

  context "Accessing the create action" do
    let(:list_gift_params) {attributes_for(:list_gifts, name: nil)}
    before do
      post :create, params: list_gift_params, format: :json
    end

    describe "shouldn't render :create template when request_params is not valid" do
      it 'returns unprocessable_entity 422 response' do
        expect(response).to have_http_status(422)
      end
    end
  end
end
