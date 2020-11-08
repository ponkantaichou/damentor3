require 'rails_helper'
RSpec.describe Review, type: :model do
  before do
    @review = FactoryBot.build(:review)
  end

  describe '全て正常に入力できた時レビューが成功する' do
    context 'レビューに成功する時' do
      it '入力項目が全て正しく入力された時、レビューに成功する' do
        expect(@review).to be_valid
      end
    end

    context 'レビューに失敗する時' do
      it 'トークンが空の時購入に失敗する' do
        @review.score = ''
        @review.valid?
        expect(@review.errors.full_messages).to include("Score can't be blank")
      end

      it 'コメントが空の時購入に失敗する' do
        @review.content = ''
        @review.valid?
        expect(@review.errors.full_messages).to include("Content can't be blank")
      end
    end
  end
end
