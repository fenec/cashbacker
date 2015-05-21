class AdmitadWorker
  include Sidekiq::Worker

  def perform()
    OrdersProcessor.run
  end
end
