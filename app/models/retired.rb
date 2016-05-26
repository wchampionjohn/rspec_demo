class Retired
  def initialize(start_date)
    @retired_day_count = 365 - (Date.today - start_date.to_date).to_i
  end

  def calculate
    @retired_day_count
  end

  def identity
    if (@retired_day_count >= 200)
      '你是菜鳥'
    elsif (@retired_day_count <= 100 && @retired_day_count > 30)
      '你是中鳥'
    elsif(@retired_day_count <= 30)
      '待退弟兄'
    end
  end
end
