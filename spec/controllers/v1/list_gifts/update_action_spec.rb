require 'rails_helper'

RSpec.describe V1::ListGiftsController, '#update', type: [:controller, :list_gift] do
  let(:login) {create(:login)}
  let(:list_gift) {create(:list_gifts)}

  before do
    token_sign_in(login)
    @request.headers['Content-Type'] = 'application/vnd.api+json'
    @request.headers['Accept'] = 'application/vnd.api+json'
  end

  context "Accessing the update action" do
    let(:list_gift_params) {list_gift.attributes.merge(name: 'ExampleUpdateName')}
    before do
      patch :update, params: list_gift_params, format: :json
    end

    describe "should render :update template" do
      it 'returns successful 200 response' do
        expect(response).to have_http_status(200)
        expect(response.content_type).to eq('application/vnd.api+json')
      end
    end
  end

  context "Accessing the update action" do
    let(:list_gift_params) {list_gift.attributes.merge(name: '')}
    before do
      patch :update, params: list_gift_params, format: :json
    end

    describe "shouldn't render :update template when request_params is not valid" do
      it 'returns unprocessable_entity 422 response' do
        expect(response).to have_http_status(422)
      end
    end
  end


end
