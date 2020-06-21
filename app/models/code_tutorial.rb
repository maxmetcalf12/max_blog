# frozen_string_literal: true

# == Schema Information
#
# Table name: code_tutorials
#
#  id           :bigint           not null, primary key
#  name         :string
#  path         :string
#  published_at :datetime
#  preview      :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class CodeTutorial < ApplicationRecord
  has_rich_text :content

  validates :name, presence: true

  scope :published, -> { where.not(published_at: nil) }
  scope :drafts, -> { where(published_at: nil) }
end
