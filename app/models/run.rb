class Run < ApplicationRecord
    belongs_to :user
    has_many :choosen_boons
    has_many :boons, through: :choosen_boons

    validates :cleared_levels, inclusion: { in: (0..4), message: "Only four levels to clear"}
end
