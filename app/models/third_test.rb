class ThirdTest < ActiveRecord::Base
  belongs_to :user
  has_many :third_reviews, dependent: :destroy
  mount_uploader :info2
validate :just_one_post, :on => :create 


protected  
def just_one_post 
	if user.third_tests.count >= 1 
	errors.add(:user_id, "El usuario ya tiene un test") 
  end 
end
end
