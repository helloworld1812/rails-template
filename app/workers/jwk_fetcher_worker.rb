class JwkFetcherWorker
  include Sidekiq::Worker

  def perform(*args)
    Rails.logger.info "==="
  end
end
