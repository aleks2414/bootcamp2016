class FourthTest < ActiveRecord::Base
  belongs_to :user
  has_many :fourth_reviews, dependent: :destroy
  has_many :fifth_reviews, dependent: :destroy
  has_many :sixth_reviews, dependent: :destroy
end
