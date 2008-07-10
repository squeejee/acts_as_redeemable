ActiveRecord::Schema.define(:version => 1) do

  create_table :free_today_coupons, :force => true do |t|

    t.column :user_id, :integer
    t.column :code, :string
    
    t.column :created_at, :datetime
    t.column :redeemed_at, :datetime
    t.column :redeemed_by_id, :integer

  end


end