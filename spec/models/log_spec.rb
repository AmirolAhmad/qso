require 'rails_helper'

RSpec.describe Log, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.build(:log)).to be_valid
  end

  describe "when doing validation" do
    it "should be invalid without date_on" do
      expect(FactoryGirl.build(:log, date_on: nil)).not_to be_valid
    end
    it "should be invalid without date_off" do
      expect(FactoryGirl.build(:log, date_off: nil)).not_to be_valid
    end
    it "should be invalid without time_on" do
      expect(FactoryGirl.build(:log, time_on: nil)).not_to be_valid
    end
    it "should be invalid without time_off" do
      expect(FactoryGirl.build(:log, time_off: nil)).not_to be_valid
    end
    it "should be invalid without frequency" do
      expect(FactoryGirl.build(:log, frequency: nil)).not_to be_valid
    end
    it "should be invalid without callsign" do
      expect(FactoryGirl.build(:log, callsign: nil)).not_to be_valid
    end
    it "should be invalid without operator_name" do
      expect(FactoryGirl.build(:log, operator_name: nil)).not_to be_valid
    end
    it "should be invalid without mode" do
      expect(FactoryGirl.build(:log, mode: nil)).not_to be_valid
    end
    it "should be invalid without his_rst" do
      expect(FactoryGirl.build(:log, his_rst: nil)).not_to be_valid
    end
    it "should be invalid without my_rst" do
      expect(FactoryGirl.build(:log, my_rst: nil)).not_to be_valid
    end
    it "should be invalid without power" do
      expect(FactoryGirl.build(:log, power: nil)).not_to be_valid
    end
    it "should be invalid without country" do
      expect(FactoryGirl.build(:log, country: nil)).not_to be_valid
    end

    it "should be valid with date_on" do
      expect(FactoryGirl.build(:log, date_on: "2016-04-04")).to be_valid
    end
    it "should be valid with date_off" do
      expect(FactoryGirl.build(:log, date_off: "2016-04-04")).to be_valid
    end
    it "should be valid with time_on" do
      expect(FactoryGirl.build(:log, time_on: "2016-04-04 23:06:07")).to be_valid
    end
    it "should be valid with time_off" do
      expect(FactoryGirl.build(:log, time_off: "2016-04-04 23:16:07")).to be_valid
    end
    it "should be valid with frequency" do
      expect(FactoryGirl.build(:log, frequency: "7.130")).to be_valid
    end
    it "should be valid with callsign" do
      expect(FactoryGirl.build(:log, callsign: "9M2ROL")).to be_valid
    end
    it "should be valid with operator_name" do
      expect(FactoryGirl.build(:log, operator_name: "Amirol Ahmad")).to be_valid
    end
    it "should be valid with mode" do
      expect(FactoryGirl.build(:log, mode: "CW")).to be_valid
    end
    it "should be valid with his_rst" do
      expect(FactoryGirl.build(:log, his_rst: "599")).to be_valid
    end
    it "should be valid with my_rst" do
      expect(FactoryGirl.build(:log, my_rst: "599")).to be_valid
    end
    it "should be valid with power" do
      expect(FactoryGirl.build(:log, power: "50")).to be_valid
    end
    it "should be valid with country" do
      expect(FactoryGirl.build(:log, country: "West Malaysia")).to be_valid
    end
  end
end
