require 'rails_helper'

RSpec.describe V1::ListGifts::FinderService, type: [:service, :list_gift], slow: true do
  subject {V1::ListGifts::FinderService.new}
  let(:repository) { V1::ListGift }
  let(:list_gift) {create(:list_gifts)}
  let(:list_gift01) {create(:list_gifts, user_id: list_gift.user_id, name: "ExampleName01")}
  let(:result_list_gift){subject.only(repository, list_gift.id, list_gift.user_id)}
  let(:result_list_gift01){subject.only(repository, list_gift01.id, list_gift.user_id)}

  describe "Initialize" do

    before do
      list_gift
      list_gift01
      result_list_gift
      result_list_gift01
    end

    context "When use two records to return it" do
      it 'returns all records' do
        expect(subject.all(repository, list_gift.user_id)).to eq [list_gift, list_gift01]
      end
    end

    context "When created two records and using it" do
      it 'find a record list_gift comparing the result' do
        expect(result_list_gift).to eq list_gift
      end
      it 'find a record list_gift_01 and compare the name field value' do
        expect(result_list_gift01.name).to eq 'ExampleName01'
      end
    end
  end
end
