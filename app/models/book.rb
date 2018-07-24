class Book < ApplicationRecord
  belongs_to :author
  validates :title, :description, presence: true
  validates :page_count, length: { minimum: 2 }
end
