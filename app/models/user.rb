class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :department_id, numericality: { other_than: 1, message: "can't be blank" }

  VALID_NAME_REGEX = /\A[ぁ-んァ-ン一-龥々ー]/i.freeze
  validates :first_name, :last_name, format: { with: VALID_NAME_REGEX }
  

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :department
  has_many :posts
  has_many :records
  has_many :comments
end
