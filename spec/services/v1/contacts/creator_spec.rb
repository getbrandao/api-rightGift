require 'rails_helper'

RSpec.describe V1::Contacts::CreatorService, type: [:service, :contact], slow: true do
  subject {V1::Contacts::CreatorService.new}
  let(:repository) { V1::Contact }
  let(:contact) {attributes_for(:contacts)}
  let(:contact01) {attributes_for(:contacts, name: "ExampleName01", active: true)}

  describe "Initialize" do


    context "Save a record and return it" do
      it 'returns success' do
        expect(subject.create(repository, contact)).to be_truthy
      end

      it 'returns success and its name' do
        expect(subject.create(repository, contact01)).to be_truthy
        expect(repository.last.name).to eq("ExampleName01")
      end
    end
  end
end
