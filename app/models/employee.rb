class Employee < ApplicationRecord
  belongs_to :department
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :salary, presence: true, numericality: { greater_than: 0 }
  
  def full_name
    "#{first_name} #{last_name}"
  end
end
