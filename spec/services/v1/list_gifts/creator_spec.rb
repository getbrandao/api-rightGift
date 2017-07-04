require 'rails_helper'

RSpec.describe V1::ListGifts::CreatorService, type: [:service, :list_gift], slow: true do
  subject {V1::ListGifts::CreatorService.new}
  let(:repository) { V1::ListGift }
  let(:list_gift) {attributes_for(:list_gifts)}
  let(:list_gift01) {attributes_for(:list_gifts, name: "ExampleName01")}

  describe "Initialize" do


    context "Save a record and return it" do
      it 'returns success' do
        expect(subject.create(repository, list_gift)).to be_truthy
      end

      it 'returns success and its name' do
        expect(subject.create(repository, list_gift01)).to be_truthy
        expect(repository.last.name).to eq("ExampleName01")
      end
    end
  end
end
