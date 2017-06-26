require 'rails_helper'

RSpec.describe V1::ContactsController, '#show', type: [:controller, :contact], slow: true do
  let(:login) {create(:login)}
  let(:contact) {create(:contacts)}


  context "Accessing the show action" do
    before do
      token_sign_in(login)
      @request.headers['Content-Type'] = 'application/vnd.api+json'
      @request.headers['Accept'] = 'application/vnd.api+json'
      get :show, params: {id: contact.id}, format: :json
    end

    describe "should render :show template" do
      it 'returns successful 200 response' do
        expect(response).to be_success
        expect(response.content_type).to eq('application/vnd.api+json')
      end
    end
  end


end
