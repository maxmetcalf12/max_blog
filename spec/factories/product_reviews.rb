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
FactoryBot.define do
  factory :product_review do
    name { "MyString" }
    url { "MyString" }
    preview { "MyText" }
    published_at { "2020-06-20 16:56:28" }
    rating { "9.99" }
    path { "MyString" }
  end
end
