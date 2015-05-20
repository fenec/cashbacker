# == Schema Information
#
# Table name: balances
#
#  id                       :integer          not null, primary key
#  user_id                  :integer
#  amount                   :integer          default(0)
#  available_for_withdrawal :integer          default(0)
#  created_at               :datetime
#  updated_at               :datetime
#

class Balance < ActiveRecord::Base
  belongs_to :user
end
