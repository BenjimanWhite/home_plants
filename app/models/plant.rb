class Plant < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :age, numericality: {allow_nil: true, allow_blank: true}
end
