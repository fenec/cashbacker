class OrdersProcessor

  def run
    @api = Admitad.new()
    if @api.auth
      parse_actions(@api.get_actions)
    end

  end

  def parse_actions(actions)
    actions.each do |action|
      action_obj = Action.find_or_initialize_by_external_id(action.action_id)
      if action.paid == 1
        action_obj.status = paid
        user = User.where(action.subid).first
        pay_user(user, amount) if user
        # логирование
      end
      # и остальная логика обработки запросов...
    end
  end

  def pay_user(user, amount)
    Transaction.transcation do
      Balance.transaction do
        user.balance += amount
        user.save!
        Transaction.create(operation_type: :payment, user_id: user.id)
      end
    end
  end

end
