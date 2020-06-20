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
require 'rails_helper'

RSpec.describe ProductReview, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
