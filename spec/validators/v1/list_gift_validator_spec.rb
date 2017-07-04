require 'rails_helper'

describe V1::ListGiftValidator, type: [:validator, :list_gift], slow: true do
  let(:errors) {subject.errors}

  before {subject.validate}

  context 'validate presence of' do
    it ':blank should be added for name field' do
      expect(errors.added? :name, :blank).to be_truthy
    end

    it ':blank should be added for contact_id field' do
      expect(errors.added? :contact_id, :blank).to be_truthy
    end

    it ':blank should be added for user_id field' do
      expect(errors.added? :user_id, :blank).to be_truthy
    end

    it ':blank should be added for image field' do
      expect(errors.added? :image, :blank).to be_truthy
    end


    it ':blank should be added for celebration field' do
      expect(errors.added? :celebration, :blank).to be_truthy
    end
  end

end
