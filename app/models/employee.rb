class Employee < ApplicationRecord
  validates_presence_of(:last_name, :first_name, :age)
end