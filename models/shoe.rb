require('pg')
class Shoe

  attr_reader :name, :address, :size, :quantity

  def initialize( params )
    @name = params['full_name']
    @address = params['address']
    @size = params['size'].to_i
    @quantity = params['quantity'].to_i
  end

  def total
    @quantity * 85
  end

  def save
    db = PG.connect({dbname: 'the_shoo_shop', host: 'localhost'})
    sql = "INSERT INTO shoo (full_name, address, size, quantity) VALUES ('#{@name}', '#{@address}', '#{@size}', #{@quantity})"
    db.exec(sql)
    db.close
  end



  def self.all
    db = PG.connect({dbname: 'the_shoo_shop', host: 'localhost'})
    sql = "SELECT * FROM shoo"
    shoes = db.exec(sql)
    orderlist = shoes.map {|shoes| Shoe.new(shoes)}
    db.close
    return orderlist
  end

end