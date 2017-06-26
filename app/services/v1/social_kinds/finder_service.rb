module V1
  module SocialKinds
    class FinderService
      def all object
        object.all
      end

      def only object, params
        object.find(params)
      end
      def from_contact object, params
        social_kind_id = V1::Contact.find(params).social_kind_id
        only(object, social_kind_id)
      end
    end
  end
end
