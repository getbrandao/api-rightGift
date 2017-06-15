require 'rails_helper'

RSpec.describe V1::SocialKindsController, '#index', type: [:controller, :social_kind], slow: true do
  let(:user) {create(:login)}
  let(:social_kinds) {create(:social_kinds)}

  context "Accessing the index action" do
    before do
      token_sign_in(user)
      @request.headers['Content-Type'] = 'application/vnd.api+json'
      @request.headers['Accept'] = 'application/vnd.api+json'
      get :index, format: :json
    end

    describe "should render :index template" do
      it 'returns successful 200 response' do
        expect(response).to be_success
        expect(response.content_type).to eq('application/vnd.api+json')
      end
      it "assigns a list of social_kind as @social_kinds" do
        create_list(:social_kinds, 5)
        get :index, format: :json
        parsed_response = JSON.parse(response.body)
        expect(parsed_response["data"].length).to eq(5)
      end
    end
  end


end
