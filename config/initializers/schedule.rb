require 'rufus-scheduler'
require "rake"
# Let's use the rufus-scheduler singleton
#
s = Rufus::Scheduler.singleton

Plantastic::Application.load_tasks

# Stupid recurrent task...
#
s.every '1m' do
  puts "TESTING RUFUS"
  Rake::Task['reminders:send_reminders'].invoke
end
