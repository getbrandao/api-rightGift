module V1
  class ListGiftSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :contact_id, :name, :image, :celebration
    belongs_to :user do
      link(:self) { edit_v1_user_password_url(object.id) }
    end
    belongs_to :contact do
      link(:self) { v1_list_gift_contact_self_url(object.id) }
      link(:related) { v1_list_gift_contact_url(object.id) }
    end

    link(:self) { v1_list_gift_url(object.id) }
  end
end
