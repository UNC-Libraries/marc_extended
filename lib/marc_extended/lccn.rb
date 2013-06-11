module LCCN
  require 'setup'
  
  def lccn_num(val)
    val.match(/(\D*)(\d*)(\D*)/)[2]  
  end
  
  def lccn_alph(val)
    val.match(/^([a-z]*)/i)[1]  
  end
  
  def lccn_kind(number)
    if number.size == 8
      kind = 'old'
    elsif number.size == 10
      kind = 'new'
    else
      kind = 'odd'
    end   
end
  
  def alph_maker(value, kind)
    places = value.size
    return value if places == 3 && kind == 'old'
    return "#{value} " if places == 2 && kind == 'old'
    return "#{value}  " if places == 1 && kind == 'old'
    return "   " if places == 0 && kind == 'old'
    return value if places == 2 && kind == 'new'
    return "#{value} " if places == 1 && kind == 'new'
    return "  " if places == 0 && kind == 'new'
end
  
  def get_776_format(val)
    number = lccn_num(val)
    kind = lccn_kind(number)
    if lccn_alph(val)
      alpha = alph_maker(lccn_alph(val), kind)
    else
      alpha = '   ' if kind == 'old'
      alpha = '  ' if kind == 'new'
    end
    return "(DLC)#{alpha}#{number}"
  end #def get_776_format
  
end #module LCCN