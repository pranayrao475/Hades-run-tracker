class GodsBoonsSerializer < ActiveModel::Serializer
  attributes :id, :boon_name, :description, :belongs_to

  def belongs_to
    godId = object.olympian_god_id
    god = OlympianGod.find(godId)
    return god.name
  end
end
