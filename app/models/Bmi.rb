class Bmi
  attr_reader :bmi
  def initialize(height, weight)
    @bmi = (weight.to_f / (height.to_f / 100) ** 2).round(1)
  end

  def output
    case @bmi
    when 35..100
      '重度肥胖'
    when 30.0..34.9
      '中度肥胖'
    when 27..29.9
      '輕度肥胖'
    when 24..26.9
      '體重過重'
    when  18.5..23.9
      '標準體重'
    when 0..18.4
      '體重過輕'
    end
  end
end
