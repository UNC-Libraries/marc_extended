# To change this template, choose Tools | Templates
# and open the template in the editor.

require './lib/marc_extended/record'

describe MARC::Record do

  describe "array_of_values" do
  it "get" do
      r = MARC::Record.new
      f = MARC::DataField.new(020, i1 = ' ', i2 = ' ',
                             MARC::Subfield.new('a', '1234'),
                             MARC::Subfield.new('c', 'no price')
                             )
      r << f
      f = MARC::DataField.new(020, i1 = ' ', i2 = ' ',
                             MARC::Subfield.new('z', '890X')
                             )
      r << f

      


  end
  end

  describe "<=>" do
    it "returns false when 001s are different" do
      rec1 = []
      MARC::Reader.new('test/rec_one.mrc').each {|rec| rec1 << rec}
      rec2 = []
      MARC::Reader.new('test/rec_two.mrc').each {|rec| rec2 << rec}

      result = 'bad'
      result = 'good' if rec1[0]['001'].value == rec2[0]['001'].value
      result.should == 'bad'
    end

    it "returns true when 001s are the same" do
      rec1 = []
      MARC::Reader.new('test/rec_one.mrc').each {|rec| rec1 << rec}
      rec1fr = []
      MARC::Reader.new('test/rec_un.mrc').each {|rec| rec1fr << rec}

      result = 'bad'
      result = 'good' if rec1[0]['001'].value == rec1fr[0]['001'].value
      result.should == 'good'
    end
  end
end

