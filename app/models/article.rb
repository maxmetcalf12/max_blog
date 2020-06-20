# frozen_string_literal: true

class Article < ApplicationRecord
  has_one_attached :cover_picture
  has_rich_text :content

  validates :title, presence: true

  scope :published, -> { where.not(published_at: nil) }
  scope :drafts, -> { where(published_at: nil) }

  def published_date; end
end
