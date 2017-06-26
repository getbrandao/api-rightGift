module V1
  class ContactSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :name, :social_kind_id, :profile, :active
    belongs_to :user do
      link(:self) { edit_v1_user_password_url(object.id) }
    end
    belongs_to :social_kind do
      link(:self) { v1_contact_social_kind_self_url(object.id) }
      link(:related) { v1_contact_social_kind_url(object.id) }
    end

    link(:self) { v1_contact_url(object.id) }
  end
end
