class User < ApplicationRecord
    # has_many :runs

    has_secure_password
end
