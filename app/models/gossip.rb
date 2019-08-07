class Gossip < ApplicationRecord
    belongs_to :user
    has_many :tags, through: :taggings
    validates :title, presence: true, length: { in: 3..20}
    validates :content, presence: true

end
