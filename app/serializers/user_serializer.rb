class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :default_address, :image

end
