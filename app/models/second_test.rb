class SecondTest < ActiveRecord::Base
  belongs_to :user
  has_many :second_reviews, dependent: :destroy
  mount_uploader :boceto
end
