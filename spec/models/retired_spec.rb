require 'rails_helper'

RSpec.describe Retired, type: :model do
  describe '計算退伍日' do
    context '#calculate' do
      context '如果有折抵' do
        pending
      end
      context '如果沒折抵' do
        it '役期以12個月計算' do
          expect(Retired.new('2015-05-31').calculate).to eq 4
        end
      end
    end
  end

  describe '秀出你的身份' do
    context "#identity" do
      it '秀出你是菜鳥如果還剩200天以上退伍' do
        expect(Retired.new('2016-05-01').identity).to eq '你是菜鳥'
      end
      it '秀出你是中鳥如果還剩100天以下退伍' do
        expect(Retired.new('2015-09-01').identity).to eq '你是中鳥'
      end
      it '秀出待退第修如果還剩30天以內退伍' do
        expect(Retired.new('2015-05-31').identity).to eq '待退弟兄'
      end
    end
  end
end
