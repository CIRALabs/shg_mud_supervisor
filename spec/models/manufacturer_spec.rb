require 'rails_helper'

RSpec.describe Manufacturer, type: :model do
  fixtures :all

  describe "relations" do
    it "should have one or more devices" do
      b1 = manufacturers(:widget1)
      expect(b1.devices.count).to be >= 1
    end

    it "should have one or more voucher requests" do
      b1 = manufacturers(:widget1)
      expect(b1.voucher_requests).to include(voucher_requests(:vr1))
    end

    it "should have one or more device types" do
      b1 = manufacturers(:widget1)
      expect(b1.device_types.count).to be >= 1
    end
  end
end
