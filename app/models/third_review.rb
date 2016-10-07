class ThirdReview < ActiveRecord::Base
  belongs_to :user
  belongs_to :third_test
end
