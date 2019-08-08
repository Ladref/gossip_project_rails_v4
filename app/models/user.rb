class User < ApplicationRecord
    has_secure_password
    has_many :gossips
    belongs_to :city
    validates :first_name, presence: true, length: { in: 2..20}
    validates :last_name, presence: true, length: { in: 2..35}
    validates :email, uniqueness: true
    validates :password, presence: true, length: { minimum: 7 }
end
