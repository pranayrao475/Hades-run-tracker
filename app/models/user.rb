class User < ApplicationRecord
    has_many :runs

    has_secure_password
    validates :username, uniqueness: true
    scope :username, lambda { |attribute, value| where("lower(#{attribute}) = ?", value.downcase).first }
end
