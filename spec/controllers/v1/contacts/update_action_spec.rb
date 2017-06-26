require 'rails_helper'

RSpec.describe V1::ContactsController, '#update', type: [:controller, :contact] do
  let(:login) {create(:login)}
  let(:contact) {create(:contacts)}

  before do
    token_sign_in(login)
    @request.headers['Content-Type'] = 'application/vnd.api+json'
    @request.headers['Accept'] = 'application/vnd.api+json'
  end

  context "Accessing the update action" do
    let(:contact_params) {contact.attributes.merge(name: 'ExampleUpdateName')}

    describe "should render :update template" do
      it 'returns successful 201 response' do
        patch :update, params: contact_params, format: :json
        expect(response).to have_http_status(200)
        expect(response.content_type).to eq('application/vnd.api+json')
      end
    end
  end

  context "Accessing the update action" do
    let(:contact_params) {contact.attributes.merge(name: '')}

    describe "shouldn't render :update template when request_params is not valid" do
      it 'returns unprocessable_entity 422 response' do
        patch :update, params: contact_params, format: :json
        expect(response).to have_http_status(422)
      end
    end
  end


end
