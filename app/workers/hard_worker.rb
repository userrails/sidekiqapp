class HardWorker
  include Sidekiq::worker

  #call this under model or controller with Hardworker.perform_async("shiv", 10)
  #start it by bundle exec sidekiq
  def perform(name, count)
    puts "This is hard work perorm under sidekiq"
  end
end