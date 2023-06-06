class User < ApplicationRecord
  has_many :restrooms
  has_many :bookmarks, dependent: :destroy
  has_many :reviews
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  def admin?
    return admin
  end
end
