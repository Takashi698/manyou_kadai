class Task < ApplicationRecord
  belongs_to :status
  validates :title, presence: true
  validates :content, presence: true
  validates :expired_at, presence: true
  validates :status, presence: true
  enum status { Pending: 1, On_going: 2, Completed: 3 }
end
