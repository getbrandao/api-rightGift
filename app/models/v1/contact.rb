module V1
  class Contact < ApplicationRecord
    belongs_to :user
    belongs_to :social_kind
  end
end
