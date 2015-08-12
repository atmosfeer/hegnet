class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :memberships
  has_many :leases
  has_many :committees, through: :memberships
  has_many :rooms, through: :leases


  validates :email,    presence: true, uniqueness: true
  validates :first_name,     presence: true
  validates :last_name,     presence: true
  validates :password, presence: true
end
