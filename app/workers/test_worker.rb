class TestWorker
  include Sidekiq::Worker
  # sidekiq_options :queue => :default, :retry => 1

  def perform(name, count)
    #     case type
    #     when "easy"
    #       sleep 5
    #       puts "This is easy job => 5 sec wait"
    #     when "medium"
    #       sleep 20
    #       puts "This is medium job => 20 sec wait"
    #     when "hard"
    #       sleep 30
    #       puts "This is hard job => 30 sec wait"
    #     when "error"
    #       sleep 15
    #       puts "There is an error, wait for 15 sec"
    #       raised "raised error"
    #     end
    sleep 10
    puts ("Name is #{name} and count is #{count}")
  end
end
