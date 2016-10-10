class FirstTest < ActiveRecord::Base
  belongs_to :user
  has_many :first_reviews, dependent: :destroy
  mount_uploader :info1
end
