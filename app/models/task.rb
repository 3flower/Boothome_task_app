class Task < ApplicationRecord

  belongs_to :user

  validates :title, :content, :progress, presence: true
  validates :content, length: {maximum: 250}

  enum progress: {"未着手": 0,"着手中": 1,"完了": 2}
end
