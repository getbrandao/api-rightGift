class User::UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :passwd
end
