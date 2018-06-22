class Employee < ApplicationRecord
has_many :children, dependent: :destroy
enum gender: [:M, :F]
end
