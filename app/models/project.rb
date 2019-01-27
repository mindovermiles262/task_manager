class Project < ApplicationRecord
  has_many :tasks
  has_many :steps, through: :tasks
end
