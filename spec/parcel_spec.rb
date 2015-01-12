require("rspec")
require("parcel")

describe("Parcel") do
  describe("volume") do
    it("Takes the dimensions of the parcel and returns the volume") do
      our_parcel = Parcel.new(1, 2, 3, 4)
      expect((our_parcel).volume()).to(eq(6))
    end
  end

  describe("cost_to_ship") do
    it("takes the weight of the parcel and returns the shipping cost tier") do
      our_parcel = Parcel.new(1, 2, 3, 4)
      expect((our_parcel).cost_to_ship()).to(eq(1))
    end
  end
end
