class SimpleMembership
  def initialize(name)
    @name = name
    @cost = 50
  end
end

class StandardMembership
  def initialize(name)
    @name = name
    @cost = 150
  end
end

class PremiumMembership
  def initialize(name)
    @name = name
    @cost = 500
  end
end

class MemberFactory
  LIST = {
    simple: SimpleMembership,
    standard: StandardMembership,
    premium: PremiumMembership
  }

  def create(name, type = 'simple')
    membership = (MemberFactory::LIST[type.to_sym]  || MemberFactory::LIST[:simple]).freeze
    member = membership.new(name)

    def member.to_s
      "#{@name} (#{self.class.name}): #{@cost}\n"
    end

    member
  end
end

factory = MemberFactory.new

members = [
  factory.create('Vladilen', 'simple'),
  factory.create('Elena', 'premium'),
  factory.create('Vasilisa', 'standard'),
  factory.create('Ivan', 'premium'),
  factory.create('Petr')
]

members.each { |m| puts m.to_s}