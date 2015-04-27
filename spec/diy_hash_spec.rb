require('rspec')
require('pry')
require('diy_hash')

describe(DiyHash) do
  describe("#fetch") do
    it("retrieves a stored value by its key") do
      test_hash = DiyHash.new()
       test_hash.store("kitten", "cute")
       expect(test_hash.fetch("kitten")).to(eq("cute"))
    end
  end

  describe("#fetch") do
    it("retrieves a previously stored value by its key after assigning new variable") do
       test_hash = DiyHash.new()
       test_hash.store("kitten", "cute")
       expect(test_hash.fetch("kitten")).to(eq("cute"))
       test_hash.store("pig", "ugly")
       expect(test_hash.fetch("pig")).to(eq("ugly"))
       expect(test_hash.fetch("kitten")).to(eq("cute"))
    end
  end
end
