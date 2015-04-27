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

  describe("has_key?") do
    it("returns the boolean if a given key is found in the test hash") do
      test_hash = DiyHash.new()
      test_hash.store("dog", "rule")
      expect(test_hash.has_key?("dog")).to(eq(true))
      expect(test_hash.has_key?("oink")).to(eq(false))
    end
  end

  describe("has_value?") do
    it("returns the boolean if a given value is found in the test hash") do
      test_hash = DiyHash.new()
      test_hash.store("dragon", "awesome")
      expect(test_hash.has_value?("cute")).to(eq(false))
      expect(test_hash.has_value?("awesome")).to(eq(true))
    end
  end

  describe("#length") do
    it("returns the number of keys stored") do
      test_hash = DiyHash.new()
      test_hash.store("kitten", "cute")
      test_hash.store("dog", "rule")
      test_hash.store("pig", "ugly")
      expect(test_hash.length).to(eq(3))
    end
  end

  describe("merge") do
    it("returns a combined hash from two hashes") do
      test_hash = DiyHash.new()
      test_hash.store("kitten", "cute")
      test_hash.store("dog", "rule")
      test_hash_2 = DiyHash.new()
      test_hash_2.store("pig", "ugly")
      test_hash_2.store("monkey", "silly")
      test_hash_3 = DiyHash.new()
      test_hash_3 = test_hash.merge(test_hash_2)
      test_hash_4 = DiyHash.new()
      test_hash_4.store("kitten", "cute")
      test_hash_4.store("dog", "rule")
      test_hash_4.store("pig", "ugly")
      test_hash_4.store("monkey", "silly")
    #  binding.pry
      expect(test_hash.merge(test_hash_2)) == test_hash_4
    end
  end
end
