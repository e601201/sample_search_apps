class User < ApplicationRecord
  validates :age, numericality: { greater_than_or_equal_to: 10 }
  enum sex: { unknown:0, male:1, female:2}, _prefix: :sex
end
