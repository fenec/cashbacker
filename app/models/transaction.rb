# == Schema Information
#
# Table name: transactions
#
#  id             :integer          not null, primary key
#  operation_type :integer
#  amount         :integer
#  user_id        :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class Transaction < ActiveRecord::Base
end
