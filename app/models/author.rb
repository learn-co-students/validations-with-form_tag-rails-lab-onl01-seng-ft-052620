class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :email, uniqueness: true
  validates :phone_number, format: {with: /\d{3}-?\d{3}-?\d{4}/}
end
