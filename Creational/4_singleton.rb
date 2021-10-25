require 'singleton'

class Database
  @@data = 'MongoDB'
  include Singleton

  class << self
    def get_data
      @@data
    end
  end
end

p Database.singleton_class # => #<Class:Database>
p Database.get_data # => "MongoDB"
database = Database.new # => private method `new' called for Database:Class (NoMethodError)
