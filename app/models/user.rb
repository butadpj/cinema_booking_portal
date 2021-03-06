class User < ApplicationRecord
    has_secure_password

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :mobile_number, presence: true, length: {maximum: 11}
    validates :email, presence: true
    validates :password, length: { minimum: 8 }
end
