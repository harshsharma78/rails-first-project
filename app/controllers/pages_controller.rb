class PagesController < ApplicationController
  def home
    TestWorker.perform_async("medium", 5)
    # TestWorker.perform_in(20.seconds, "20", 5)
    # TestWorker.perform_at(20.seconds.from_now, "20 from now", 5)
    #  Sidekiq::Stats.new.reset
  end

  def about
    # TestWorker.perform_async("easy", 2)
    # TestWorker.perform_in(15.seconds, "15", 2)
  end
end
