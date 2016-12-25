class Exam < ApplicationRecord
  enum status: [:created, :started, :submitted, :passed, :failed]

end
