# == Schema Information
#
# Table name: responses
#
#  id           :integer          not null, primary key
#  choice_id    :integer          not null
#  responder_id :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class ResponseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
