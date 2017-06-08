require 'rails_helper'

RSpec.describe SocialKindsController, '#index', type: [:controller, :social_kind], slow: true do
  let(:social_kinds) {create(:social_kinds)}

  context "Accessing the index action" do
    before do
      @request.headers['Content-Type'] = 'application/vnd.api+json'
      @request.headers['Accept'] = 'application/vnd.api+json'
      get :index, format: :json
    end

    describe "should render :index template" do
      it 'returns successful 200 response' do
        expect(response).to be_success
        # expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq('application/vnd.api+json')
      end
      it "assigns a list of social_kind as @social_kinds" do
        create_list(:social_kinds, 5)
        parsed_response = JSON.parse(response.body)
        expect(parsed_response["data"].length).to eq(5)
      end
    end
  end


end
