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
require 'rails_helper'

RSpec.describe Article, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
