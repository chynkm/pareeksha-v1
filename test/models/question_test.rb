require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'should not save question without its contens' do
    question = Question.new
    assert_not question.save
  end

end
