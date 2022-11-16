# == Schema Information
#
# Table name: units
#
#  id         :integer          not null, primary key
#  project    :string
#  stage      :string
#  tower      :string
#  number     :string
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class UnitTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
