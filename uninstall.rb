require 'acts_as_redeemable'
ActiveRecord::Base.send(:include, Squeejee::Acts::Redeemable)
