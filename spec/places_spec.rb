require('rspec')
require('places')

describe(Places) do
  describe("#destination") do
    it('takes an input from the user and displays the place the user inputs') do
      test_place = Places.new("Slovakia")
      expect(test_place.destination()).to(eq("Slovakia"))
    end
  end
  describe(".list") do
    it('is empty at the beginning') do
      expect(Places.list()).to(eq([]))
    end
  end
  describe("#save") do
    it('saves the place into a list of places visited') do
      test_place = Places.new("Columbia")
      test_place.save()
      expect(Places.list()).to(eq([test_place]))
    end
  end
  describe(".clear") do
    it("clears out all saved places") do
      Places.new("Columbia").save()
      Places.clear()
      expect(Places.list()).to(eq([]))
    end
  end
end
