class SecondTest < ActiveRecord::Base
  belongs_to :user
  has_many :second_reviews, dependent: :destroy
  mount_uploader :boceto
validate :just_one_post, :on => :create 


protected  
def just_one_post 
	if user.second_tests.count >= 1 
	errors.add(:user_id, "El usuario ya tiene un test") 
  end 
end
end
