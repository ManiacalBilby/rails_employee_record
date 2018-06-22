class Child < ApplicationRecord
  belongs_to :employee
  enum gender: [:M, :F]
end
