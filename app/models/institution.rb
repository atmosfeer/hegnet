class Institution < ActiveRecord::Base
  has_many :committees
  has_many :users, through: :rooms
end
