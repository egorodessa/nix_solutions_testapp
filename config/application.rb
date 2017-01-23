require_relative 'boot'

require 'rails/all'



# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)



module NixSolutions
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    # config.active_job.queue_adapter = :sidekiq
  end
end

# config.after_initialize do
#   require 'sidekiq'
#   require 'sidekiq-cron'
#   Sidekiq::Cron::Job.create(name: 'ForParsingWorker - every 5min', cron: '*/5 * * * *', class: 'ForParsingWorker')
# end
