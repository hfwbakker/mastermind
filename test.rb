class Vader
  def initialize(geld)
    @geld = geld
  end
end

class Zoon < Vader
  def self.initialize; end

  def zoon_dingen
    print("scharminkelig gezeur\n")
  end
end

class Dochter < Vader
  def self.initialize; end

  def dochter_dingen
    print("elegant gebrabbel\n")
  end
end

frans = Vader.new(100)
henri = Zoon.new
sophie = Dochter.new

# Can I initialize Zoon or Dochter without re-initializing the same value (geld) as parent class? Can I intialize them with their "own copy" of geld that cant be edited by other classes?

# How to call zoon_dingen from instance of Dochter?