class Book < ApplicationRecord

    belongs_to :user, optional: true

    validates :name, presence: true
    validates :name, presence: true, length: { maximum: 200 }

end
