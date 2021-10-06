class UserScriptSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :script
end
