class OlympianGodSerializer < ActiveModel::Serializer
  attributes :id, :name, :title, :image
  has_many :boons
end
