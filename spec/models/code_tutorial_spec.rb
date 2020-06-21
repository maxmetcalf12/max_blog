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
require 'rails_helper'

RSpec.describe CodeTutorial, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
