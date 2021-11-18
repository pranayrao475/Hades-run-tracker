class Run < ApplicationRecord
    belongs_to :user
    has_many :chosen_boons
    has_many :boons, through: :chosen_boons

    validates :cleared_levels, inclusion: { in: (0..4), message: "Only four levels to clear"}
end
