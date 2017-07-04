require 'rails_helper'

RSpec.describe V1::ListGiftsController, '#index', type: [:controller, :list_gift], slow: true do
  let(:login) {create(:login)}

  context "Accessing the index action" do
    before do
      token_sign_in(login)
      @request.headers['Content-Type'] = 'application/vnd.api+json'
      @request.headers['Accept'] = 'application/vnd.api+json'
      get :index, format: :json
    end

    describe "should render :index template" do
      it 'returns successful 200 response' do
        expect(response).to be_success
        expect(response.content_type).to eq('application/vnd.api+json')
      end
      it "assigns a list of list_gift as @list_gifts" do
        create_list(:list_gifts, 5, user_id: login.id)
        get :index, format: :json
        parsed_response = JSON.parse(response.body)
        expect(parsed_response["data"].length).to eq(5)
      end
    end
  end


end
