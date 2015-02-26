class User
  include Mongoid::Document

  field :email
  field :username
  field :full_name
  field :location
  field :homepage
  field :rate_limit, type: Integer
end
