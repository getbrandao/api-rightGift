module V1
  class ListGift < ApplicationRecord
    belongs_to :user
    belongs_to :contact
  end
end
