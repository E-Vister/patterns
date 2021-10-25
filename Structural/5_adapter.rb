class OldCalc
  def operations(t1, t2, operation)
    case (operation)
    when "add" then t1 + t2
    when "sub" then t1 - t2
    else
      'NoInformationGiven'
    end
  end
end

class NewCalc
  def add(t1, t2)
    t1 + t2
  end

  def sub(t1, t2)
    t1 - t2
  end
end

class CalcAdapter
  def initialize
    @calc = NewCalc.new
  end

  def operations(t1, t2, operation)
    case (operation)
    when "add" then @calc.add(t1, t2)
    when "sub" then @calc.sub(t1, t2)
    else
      'NoInformationGiven'
    end
  end
end

old_calc = OldCalc.new
p old_calc.operations(5, 10, "add")

new_calc = NewCalc.new
p new_calc.add(10,5)

adapter = CalcAdapter.new
p adapter.operations(25, 10, "sub")