class <%= class_name %> < ActiveRecord::Base
  acts_as_redeemable 

  belongs_to :user
  belongs_to :redeemed_by, :class_name => "User", :foreign_key => "redeemed_by_id"
  validates_presence_of :user_id
end
