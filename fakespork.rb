# fakespork.rb
require 'drb'

module FakeSpork
  def self.run(args, stderr, stdout)
    puts "run called with: #{args.inspect}"
    stdout.puts "this proves I can connect back to the client and send it things!"
  end
end

DRb.start_service("druby://127.0.0.1:8989", FakeSpork)
puts "FakeSpork ready for action on port 8989!"
DRb.thread.join
