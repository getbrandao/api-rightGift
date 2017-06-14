module V1
  module SocialKinds
    class FindService
      def all object
        object.all
      end

      def only object, id
        object.find(id)
      end
    end
  end
end
