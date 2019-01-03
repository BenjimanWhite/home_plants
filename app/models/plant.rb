class Plant < ApplicationRecord
  validates :name, presence: true
  validates :age, numericality: {allow_nil: true, allow_blank: true}
end
