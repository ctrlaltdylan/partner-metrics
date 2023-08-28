class ImportMetricsJob < ApplicationJob
  queue_as :default

  def perform(user_id:)
    user = User.find(user_id)
    return unless user

    PaymentHistory.calculate_metrics(user)
  rescue => e
    user&.update(import: "Failed", import_status: 100)
    raise e
  end
end
