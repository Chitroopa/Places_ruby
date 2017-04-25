require('rspec')
require('places')
require('pry')

describe(Places) do
  before() do
    Places.clear()
  end

  describe('#save') do
    it("will let you enter places name and date") do
      test_places= Places.new("Epicodus", "03-13-2017")
      test_places.save()
      expect(Places.all()).to(eq({"Epicodus"=>"03-13-2017"}))
    end
  end

  describe('.all') do
    it("will let you enter places name and date") do
      test_places= Places.new("Seattle", "01-01-2014")
      test_places.save()
      expect(Places.all()).to(eq({"Seattle"=>"01-01-2014"}))
    end
  end

end
