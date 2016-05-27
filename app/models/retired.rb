class Retired
  def initialize(start_date, disconut_days = nil)
    @retired_days = 365 - (Date.today - start_date.to_date).to_i
    @retired_days -= disconut_days unless disconut_days.nil?
  end

  def calculate
    @retired_days
  end

  def identity
    if @retired_days >= 200
      '你是菜鳥'
    elsif @retired_days < 200 && @retired_days >= 30
      '你是中鳥'
    elsif @retired_days < 30
      '待退弟兄'
    end
  end
end
