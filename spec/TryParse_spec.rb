require 'lib/TryParse.rb'
describe "Tryparse" do
  it "should accept a simple string hash" do
    hash = { 'b'=>'c' }
    Tryparse.try(hash.inspect).should eql(true)
  end
  it "should accept a simple symbol hash" do
    hash = { :d=>:c }
    Tryparse.try(hash.inspect).should eql(true)
  end
  it "should accept a simple numeric hash" do
    hash = { 2=>3 }
    Tryparse.try(hash.inspect).should eql(true)
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
  it "should accept a nested numeric hash" do
    hash = { 2=>{3=>4} }
    Tryparse.try(hash.inspect).should eql(true)
  end
  it "should accept a nested numeric hash" do
    hash = { :a=>{:b=>:c} }
    Tryparse.try(hash.inspect).should eql(true)
  end
  it "should accept a nested numeric hash" do
    hash = { 'a'=>{'c'=>'b'} }
    Tryparse.try(hash.inspect).should eql(true)
  end
 
end
