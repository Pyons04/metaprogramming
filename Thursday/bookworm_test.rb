class FakeTime
  def self.now
    "Sun Oct 06 16:19:20"
  end
end

  require "test/unit"
  require "./bookworm.rb"

  class TestLoan < Test::Unit::TestCase
    def test_conversion_to_string
      # Loan.instance_eval{@time_class = FakeTime}
      Loan.class_eval{@time_class = FakeTime}
      loan = Loan.new("Ruby")
      assert_equal "RUBY loadned on Sun Oct 06 16:19:20", loan.to_s
    end
  end