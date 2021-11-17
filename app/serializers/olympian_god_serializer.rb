class OlympianGodSerializer < ActiveModel::Serializer
  attributes :id, :name, :title, :image, :description
  has_many :boons
end
