require 'rails_helper'

RSpec.describe V1::ListGifts::UpdaterService, type: [:service, :list_gift], slow: true do
  subject {V1::ListGifts::UpdaterService.new}
  let(:repository) { V1::ListGift }
  let(:list_gift) {create(:list_gifts)}
  let(:list_gift_not_exists) {attributes_for(:list_gifts)}
  let!(:list_gift_update) {attributes_for(:list_gifts, id: list_gift.id, name: "ExampleUpdate01")}

  describe "Initialize" do


    context "Update a record when doesn't exist and return it" do
      it "save a record when doesn't exist" do
        expect(subject.update(repository, list_gift_not_exists)).to be_truthy
      end

      it 'returns success and its name' do
        expect(subject.update(repository, list_gift_update)).to be_truthy
      end
    end
  end
end
