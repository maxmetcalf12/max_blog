# frozen_string_literal: true

# == Schema Information
#
# Table name: product_reviews
#
#  id           :bigint           not null, primary key
#  name         :string
#  url          :string
#  preview      :text
#  published_at :datetime
#  rating       :decimal(, )
#  path         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class ProductReview < ApplicationRecord
  has_rich_text :content

  validates :name, presence: true

  scope :published, -> { where.not(published_at: nil) }
  scope :drafts, -> { where(published_at: nil) }
end
