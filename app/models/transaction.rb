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
  enum operation_type: [ :change_balance, :payment, :cashout ] # пополнение баланса, обновление баланса, доступного для вывода, вывод денег пользователем
end
