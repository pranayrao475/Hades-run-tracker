class User < ApplicationRecord
    has_many :runs

    has_secure_password
    validates :username, presence: true, uniqueness: { case_sensitive: false }
end
