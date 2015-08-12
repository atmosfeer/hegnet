class Committee < ActiveRecord::Base
  belongs_to :institution

  has_many :users, through: :memberships
end
