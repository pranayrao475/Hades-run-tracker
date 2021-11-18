class ChosenBoonSerializer < ActiveModel::Serializer
  attributes :boon_name, :id

  def boon_name
    name = Boon.find(object.id)
    return name.boon_name
  end
  
end
