- Khi thiết kế lớp, với mỗi thuộc tính chúng ta sẽ định nghĩa 2 phương thức là
getter và setter, mục đích của 2 phương thức này là để truy xuất dữ liệu và
chỉnh sửa chúng.
- Trong Ruby thì có sẵn 3 phương thức là attr_reader, attr_writer và
attr_accessor dùng để tự tạo các phương thức getter và setter.
- Phương thức attr_reader sẽ tạo các phương thức getter trong khi phương thức
attr_writer sẽ tạo các phương thức setter. Phương thức attr_accessor sẽ tạo
cả getter, setter và các biến instance object

*****
class Car
end

car = Car.new
car.name # => no method error

*****
class Car
  name = 1
  def self.name
   @name
  end

  def name
    @name
  end
  def name=str
@name =str
end
end

car = Car.new
car.name # => nil
car.name = "Dennis" # => no method error

Ở đây ta có thể gọi được method name nhưng ko thể gán gía trị cho nó được
*****

class Car
  def name
    @name || 'name of car'
  end

  def name=(str)
    @name = str
  end
end

car = Car.new
car.name = 'Name of car'
car.name # => "Name of car"


**********

class Car
  attr_reader :name, :price
  attr_writer :name, :price

  def to_s
    "#{@name}: #{@price}"
  end
end

- Ta có thể viết gọn lại

class Car
  attr_accessor :name, :price

  def to_s
    "#{@name}: #{@price}"
  end
end

- Sử dụng attr accessor with default

class Person
  attr_writer :name

  def name
    @name || 'Name default'
  end
end




