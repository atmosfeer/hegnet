class Room < ActiveRecord::Base
  belongs_to :institution
  has_many :users, through: :leases
end
