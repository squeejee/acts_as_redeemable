require 'test/unit'
require File.expand_path(File.join(File.dirname(__FILE__), '../../../../config/environment.rb'))
require File.dirname(__FILE__) + '/../lib/acts_as_redeemable'
load(File.dirname(__FILE__) + "/schema.rb")

class FreeTodayCoupon < ActiveRecord::Base
  acts_as_redeemable
  
end

class ActsAsRedeemableTest < Test::Unit::TestCase
  # Replace this with your real tests.
  def test_should_generate_six_digit_code
    assert_equal FreeTodayCoupon.generate_unique_code.length, 6
  end
  
  def test_should_mark_redeemed
    f = FreeTodayCoupon.create(:user_id => 1)
    f.redeem!(2)
    assert f.redeemed?
  end
end
