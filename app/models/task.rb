class Task < ApplicationRecord

  belongs_to :user
  has_many_attached :files

  validates :title, :content, :in_charge_name, :progress, presence: true
  validates :content, length: {maximum: 250}

  enum progress: {"未着手": 0,"着手中": 1,"完了": 2}

  def url
    helpers = Rails.application.routes.url_helpers
    helpers.rails_representation_url(file.variant({}), only_path: true)
  end
end
