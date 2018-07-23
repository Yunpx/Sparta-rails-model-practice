class Book < ApplicationRecord
  validates :title, :description, presence: true
  validates :page_count, length: { minimum: 2 }

end
