class FourthTest < ActiveRecord::Base
  belongs_to :user
  has_many :fourth_reviews, dependent: :destroy
  has_many :fifth_reviews, dependent: :destroy
  has_many :sixth_reviews, dependent: :destroy
validate :just_one_post, :on => :create 


protected  
def just_one_post 
	if user.fourth_tests.count >= 1 
	errors.add(:user_id, "El usuario ya tiene un test") 
  end 
end
end
