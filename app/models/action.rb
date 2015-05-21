# == Schema Information
#
# Table name: actions
#
#  id          :integer          not null, primary key
#  status      :integer
#  external_id :integer
#  subid       :integer
#  amount      :integer
#  payment     :integer
#  shop_name   :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Action < ActiveRecord::Base
  enum status: [:pending, :approved, :declined, :approved_but_stalled, :paid]
end
