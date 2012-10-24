$:<< "."
require 'pi_calculator'

describe PiCalculator, "#calculate" do
  it "returns something close to pi" do
    pi_calculator = PiCalculator.new
    pi = pi_calculator.calculate
    pi.should be_within(0.1).of(3.14)
  end

  it "returns something damn close to pi" do
    pi_calculator = PiCalculator.new
    pi = pi_calculator.calculate
    pi.should be_within(0.0000001).of(3.14)
  end

end

describe PiCalculator, "#find_area_of_unit_circle" do
  it "returns something close to pi/4" do
    pi_calculator = PiCalculator.new
    circle_area = pi_calculator.send("find_area_of_unit_circle")
    circle_area.should be_within(0.1).of(3.14159/4)
  end
end
