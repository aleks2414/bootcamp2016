class FifthReview < ActiveRecord::Base
  belongs_to :user
  belongs_to :fourth_test
end
