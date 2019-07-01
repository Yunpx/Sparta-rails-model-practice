class Author < ApplicationRecord
  has_many :books

  def full_name
    "#{first_name} #{second_name}"
  end
end
