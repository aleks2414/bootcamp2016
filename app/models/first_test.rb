class FirstTest < ActiveRecord::Base
  belongs_to :user
  has_many :first_reviews, dependent: :destroy
  mount_uploader :info1
validate :just_one_post, :on => :create 


protected  
def just_one_post 
	if user.first_tests.count >= 1 
	errors.add(:user_id, "El usuario ya tiene un test") 
  end 
end
end
