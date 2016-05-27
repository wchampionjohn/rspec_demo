require 'rails_helper'

RSpec.describe Retired, type: :model do
  describe '計算退伍日' do
    context '#calculate' do
      context '有折抵' do
        it '役期以365扣除折抵天數來計算' do
          start_date = 331.days.ago.strftime('%Y-%m-%d')
          expect(Retired.new(start_date, 30).calculate).to eq 4
        end
      end
      context '沒折抵' do
        it '役期以365天計算' do
          start_date = 361.days.ago.strftime('%Y-%m-%d')
          expect(Retired.new(start_date).calculate).to eq 4
        end
      end
    end
  end
  describe '秀出身份' do
    context '#identity' do
      it '如果還有200天以上天退伍秀出你是菜鳥' do
        expect(Retired.new('2016-05-01').identity).to eq '你是菜鳥'
      end
      it '如果還有30~200天以上天退伍秀出你是中鳥' do
        expect(Retired.new('2015-09-30').identity).to eq '你是中鳥'
      end
      it '如果還有30天以下天退伍秀出待退弟兄' do
        expect(Retired.new('2015-5-31').identity).to eq '待退弟兄'
      end
    end
  end
end
