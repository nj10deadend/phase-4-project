class ScriptSerializer < ActiveModel::Serializer
  attributes :id, :choice, :prompt
  has_many :options
end
