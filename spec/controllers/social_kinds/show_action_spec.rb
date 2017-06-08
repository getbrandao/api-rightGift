require 'rails_helper'

RSpec.describe SocialKindsController, '#show', type: [:controller, :social_kind], slow: true do
  let(:social_kinds) {FactoryGirl.create(:social_kinds)}


  context "Accessing the show action" do
    before do
      @request.headers['Content-Type'] = 'application/vnd.api+json'
      @request.headers['Accept'] = 'application/vnd.api+json'
      get :show, params: {id: social_kinds.id}, format: :json
    end

    describe "should render :show template" do
      it 'returns successful 200 response' do
        expect(response).to be_success
        expect(response.content_type).to eq('application/vnd.api+json')
      end
    end
  end


end
