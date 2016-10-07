class ThirdTest < ActiveRecord::Base
  belongs_to :user
  has_many :third_reviews, dependent: :destroy
end
