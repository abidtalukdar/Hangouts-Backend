class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :current_address, :default_address, :image,:default_location_preference

end
