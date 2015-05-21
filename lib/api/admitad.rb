class Admitad
  include HTTParty
  base_uri 'api.admitad.com'

  def initialize
    @options = { date_start: '01.01.2011' }
  end

  def auth
  #  авторизуемся в API
  end

  def get_actions
    self.class.get('statistics/actions', @options)
  end

end
