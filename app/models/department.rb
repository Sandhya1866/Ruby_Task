class Department < ApplicationRecord
  has_many :employees, dependent: :destroy
  
  validates :name, presence: true, uniqueness: true
  validates :budget, presence: true, numericality: { greater_than: 0 }
end
