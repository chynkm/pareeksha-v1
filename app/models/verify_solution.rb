class VerifySolution < ApplicationRecord
  enum result: [:passed, :failed]

end
