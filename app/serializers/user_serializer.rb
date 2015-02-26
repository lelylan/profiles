class UserSerializer < ApplicationSerializer
  cached true

  attributes :id, :email, :username, :full_name, :location, :homepage, :rate_limit
end
