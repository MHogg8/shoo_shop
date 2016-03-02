require('minitest/autorun')
require('minitest/rg')
require_relative('../models/shoe')

class TestShoe <MiniTest::Test

  def setup
    params = {
    'full_name' => 'Jimmy Tarbuck',
    'address' => '1 Bakewell House',
    'city' => 'Edinburgh',
    'size' =>  8,
    'quantity' => 14
  }
  
  @shoe = Shoe.new(params)
  
  end

  def test_name
    assert_equal('Jimmy Tarbuck', @shoe.name)
  end

  def test_quantity
    assert_equal(14, @shoe.quantity)
  end

  def test_size
    assert_equal(8, @shoe.size)
  end

  def test_address
    assert_equal('1 Bakewell House', @shoe.address)
  end



end