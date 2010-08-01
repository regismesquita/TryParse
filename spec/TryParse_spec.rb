require 'lib/Tryparse.rb'
describe "Tryparse" do
  it "should accept a empty hash" do
    hashs = [
      {}
    ]

    hashs.each do |hash|
      Tryparse.try(hash.inspect).should eql(true)
    end
  end
 
  it "should accept a simple string hashs" do
    hashs = [
      { 'b'=>'c' },
      { 'baa'=>'caa' }
    ]

    hashs.each do |hash|
      Tryparse.try(hash.inspect).should eql(true)
    end
  end
    it "should accept a simple symbol hashs" do
    hashs = [
      { :d=>:c }
    ]
    hashs.each do |hash|
      Tryparse.try(hash.inspect).should eql(true)
    end
  end
  it "should accept a long symbol hashs" do
    hashs = [
      { :aad=>:aac }
    ]
    hashs.each do |hash|
      Tryparse.try(hash.inspect).should eql(true)
    end
  end
 it "should accept a simple numeric hashs" do
    hashs = [
      { 2=>3 }
    ]
    hashs.each do |hash|
      Tryparse.try(hash.inspect).should eql(true)
    end
  end
  it "should accept mixed hashs" do
    hashs = [
      { 'b'=>:c },
      { 'b'=>3 },
      { 2=>'c' },
      { 2=>:d },
      { :d=>'c' },
      { :d=>3 }
    ]
    hashs.each do |hash|
        Tryparse.try(hash.inspect).should eql(true)
    end
  end
  it "should accept a nested numeric hashs" do
    hashs = [
      { 2=>{3=>4} }
    ]
    hashs.each do |hash|
      Tryparse.try(hash.inspect).should eql(true)
    end
  end
  it "should accept a nested symbol hashs" do
    hashs = [
      { :a=>{:b=>:c} },
      { :aaaaa=>{:baaaaa=>:aaaaac} }
    ]
    hashs.each do |hash|
      Tryparse.try(hash.inspect).should eql(true)
    end
  end
  it "should accept a nested string hashs" do
    hashs = [
      { 'a'=>{'c'=>'b'} },
      { 'aaa'=>{'aaaac'=>'aaab'} }
    ]
    hashs.each do |hash|
      Tryparse.try(hash.inspect).should eql(true)
    end
  end
  it "should accept multiples hash" do
    hash = {'teste' => 3, 'd' => :b,:c =>'b'}
    Tryparse.try(hash.inspect).should eql(true)
  end
end
