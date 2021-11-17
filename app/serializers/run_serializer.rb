class RunSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :cleared_levels
  has_many :chosen_boons
end
