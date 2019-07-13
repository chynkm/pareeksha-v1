require 'test_helper'

class CandidateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'should not save candidate without email and names' do
    candidate = Candidate.new
    assert_not candidate.save
  end

end
