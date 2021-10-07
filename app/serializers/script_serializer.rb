class ScriptSerializer < ActiveModel::Serializer
  attributes :id, :choice, :prompt, :image_url, :image_url2
  has_many :options
end
