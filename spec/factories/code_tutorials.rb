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
FactoryBot.define do
  factory :code_tutorial do
    name { "MyString" }
    path { "MyString" }
    published_at { "2020-06-20 19:21:24" }
    preview { "MyText" }
  end
end
