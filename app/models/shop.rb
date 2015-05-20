# == Schema Information
#
# Table name: shops
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  url           :text
#  hold_time     :integer
#  reward_type   :string(255)
#  reward_amount :float
#  created_at    :datetime
#  updated_at    :datetime
#

class Shop < ActiveRecord::Base
  def generate_redirect_link(user_id)
    "#{url}?subid=#{user_id}"
  end

end
