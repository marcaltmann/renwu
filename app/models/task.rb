class Task < ApplicationRecord
  enum status: [ :pending, :waiting, :done, :canceled ]

  belongs_to :project
  belongs_to :category
end
