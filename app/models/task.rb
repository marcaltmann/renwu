class Task < ApplicationRecord
  enum status: [ :pending, :waiting, :done, :canceled ]

  belongs_to :project
  belongs_to :category

  validates :content, presence: true, length: { minimum: 2, maximum: 64 }
end
