class User < ApplicationRecord
    validates :email, presence: true, email: true
end
