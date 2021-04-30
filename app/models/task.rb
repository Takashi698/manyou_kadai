class Task < ApplicationRecord
  belongs_to :status
  validates :title, presence: true
  validates :content, presence: true
  validates :expired_at, presence: true
  validates :status, presence: true
  enum status: { pending: 1, on_going: 2, completed: 3 }
  enum priority: { low: 1, middle: 2, high: 3 }
  scope :search_title, -> (search_title) { where("title LIKE ?", "%#{search_title}%")}
  scope :search_status, -> (search_status) { where(status: search_status)}
end
