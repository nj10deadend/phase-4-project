class OptionSerializer < ActiveModel::Serializer
  attributes :id, :choice_value, :detail
  has_one :script
end
