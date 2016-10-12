require 'rails_helper'

RSpec.describe Manufacturer, type: :model do
  fixtures :all

  describe "relations" do
    it "should have one or more nodes" do
      b1 = manufacturers(:widget1)
      expect(b1.nodes.count).to be >= 1
    end
  end
end
