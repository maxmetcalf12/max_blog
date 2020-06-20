# == Schema Information
#
# Table name: articles
#
#  id           :bigint           not null, primary key
#  title        :string           not null
#  published_at :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  preview      :text
#
FactoryBot.define do
  factory :article do
    title { "MyString" }
    published_at { "2020-06-20 14:15:36" }
  end
end
