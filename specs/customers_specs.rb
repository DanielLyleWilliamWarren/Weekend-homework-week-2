require("minitest/autorun")
require_relative("../customers.rb")
require("minitest/rg")
class CustomersTest < MiniTest::Test

def setup
@customer1 = Customers.new("Bob", 50)
end

def test_customer_has_name
  assert_equal("Bob", @customer1.name)
end

def test_customer_has_wallet
  assert_equal(50, @customer1.wallet)
end









end
