class Boon < ApplicationRecord
    belongs_to :olympian_god
    has_many :chosen_boons
    has_many :runs, through: :chosen_boons
end
