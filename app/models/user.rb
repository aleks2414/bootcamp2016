class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :first_tests, dependent: :destroy
  has_many :second_tests, dependent: :destroy
  has_many :third_tests, dependent: :destroy
  has_many :fourth_tests, dependent: :destroy
  has_many :first_reviews, through: :tests, dependent: :destroy
  has_many :second_reviews, through: :tests, dependent: :destroy
  has_many :third_reviews, through: :tests, dependent: :destroy
  has_many :fourth_reviews, through: :tests, dependent: :destroy
  has_many :fifth_reviews, through: :tests, dependent: :destroy
  has_many :sixth_reviews, through: :tests, dependent: :destroy
end
