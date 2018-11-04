require "testsuit/version"

module Testsuit
  class Tester
    def assert(expected:, actual:)
      if expected == actual
        'PASSED'
      else
        'FAILED'
      end
    end

    def test_core
      TASKS.each do |task|
        puts "test task#{task} is #{assert(expected: EXPECTED[task], actual: ACTUAL[task])}"
      end
    end
  end

  puts 'Input config file or press enter to use default file'
  conf = String(gets.chomp)
  conf != '' ? (load conf) : (load 'test-config.rb')
  run = Tester.new
  run.test_core
end
