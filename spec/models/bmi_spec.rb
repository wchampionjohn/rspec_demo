require 'rails_helper'

RSpec.describe Bmi, type: :model do
  describe "calculator" do
    it "can be calculate bmi use by height and weight" do
      expect(Bmi.new(200, 100).bmi).to be 25.0
    end
    it "計算結果必須是四捨五入取小數點第一位" do
      expect(Bmi.new(180, 80).bmi).to be 24.7
    end
  end
  describe "#output" do
    context "age is > 20" do
      pending
    end
    it "will be show very heavy if bmi >= 35" do
      expect(Bmi.new(180, 120).output).to eq '重度肥胖abc'
    end
    it "will be show heavy if bmi >= 30 and < 35" do
      expect(Bmi.new(180, 110).output).to eq '中度肥胖'
    end
    it "will be show a little heavy if bmi >= 27 and < 30" do
      expect(Bmi.new(180, 95).output).to eq '輕度肥胖'
    end
    it "will be show overweight if bmi >= 24 and < 27" do
      expect(Bmi.new(180, 85).output).to eq '體重過重'
    end
    it "will be show standard weigh if bmi >= 18.5 and < 24" do
      expect(Bmi.new(180, 70).output).to eq '標準體重'
    end
    it "will be show too thin if bmi >= 18.5" do
      expect(Bmi.new(180, 50).output).to eq '體重過輕'
    end
  end
end
