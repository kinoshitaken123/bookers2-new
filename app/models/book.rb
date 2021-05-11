class Book < ApplicationRecord

    belongs_to :user, optional: true

    validates :body, presence: true
    validates :title, presence: true
    validates :body, presence: true, length: { maximum: 200 }

end
