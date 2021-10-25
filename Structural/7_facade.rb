class Comlaints
  @@complaints = []

  def reply(complaint)
    raise "NotImplemented"
  end

  def add(complaint)
    @@complaints << complaint
    self.reply(complaint)
  end

  class << self
    def complaints
      @@complaints
    end
  end
end

class ProductComplaints < Comlaints
  def reply(complaint)
    "Product - #{complaint[:id]}: #{complaint[:customer]}(#{complaint[:details]})"
  end
end

class ServiceComplaints < Comlaints
  def reply(complaint)
    "Service - #{complaint[:id]}: #{complaint[:customer]}(#{complaint[:details]})"
  end
end

class ComplaintRegistry
  def register(customer, type, details)
    @@id = Time.now.strftime("%H.%m.%Y")
    @@complaint

    @@complaint = ServiceComplaints.new if type == 'service'
    @@complaint = ProductComplaints.new if type == 'product'

    @@complaint.add({id: @@id, customer: customer, details: details})
  end
end

registry = ComplaintRegistry.new
p registry.register('Alex', 'service', 'Unavaible')
p registry.register('Elena', 'product', 'Exception')
p registry.register('Valery', 'product', 'Something')
p Comlaints.complaints