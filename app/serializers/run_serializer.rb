class RunSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :cleared_levels, :entered_on
  has_many :chosen_boons

  def entered_on
    date = object.created_at.to_date
    return date
  end
end
