require 'sidekiq'
require 'sidekiq-cron'


class ForParsingWorker
  include Sidekiq::Worker

  def perform(*args)
    # Do something
    Rake::Task[parser:fivepages_of_Hacker_news].invoke
  end
end



