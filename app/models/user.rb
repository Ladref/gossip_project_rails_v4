class User < ApplicationRecord
    has_many :gossips
    belongs_to :city
    validates :first_name, presence: true, length: { in: 2..20}
    validates :last_name, presence: true, length: { in: 2..35}
    validates :email, uniqueness: true
end
