require 'rails_helper'
RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
    @user2 = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '商品登録に成功する時' do
      it '入力項目が全て正しく入力された時、登録に成功する' do
        expect(@user).to be_valid
      end
    end
  end

  context '新規登録に失敗する時' do
    it 'ニックネームが空欄の時、登録に失敗する' do
      @user.nickname = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Nickname can't be blank")
    end

    it 'メールアドレスが空欄の時、登録に失敗する' do
      @user.email = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end

    it 'メールアドレスに@がない時、登録に失敗する' do
      @user.email = 'ffshgahgh'
      @user.valid?
      expect(@user.errors.full_messages).to include('Email is invalid')
    end

    it 'メールアドレスが同じ時、登録に失敗する' do
      @user.save
      @user2.email = @user.email
      @user2.valid?
      expect(@user2.errors.full_messages).to include('Email has already been taken')
    end

    it 'パスワードが空欄の時、登録に失敗する' do
      @user.password = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end

    it 'パスワードが6文字以下の時、登録に失敗する' do
      @user.password = '12345'
      @user.valid?
      expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
    end

    it '確認用のパスワードが間違えている時、登録に失敗する' do
      @user.password_confirmation = 'agahgioi2233'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end

    it 'パスワードが英語だけの時、登録に失敗する' do
      @user.password = 'aaaaaa'
      @user.valid?
      expect(@user.errors.full_messages).to include('Password は英字と数字の両方を含めて設定してください')
    end

    it 'パスワードが数字だけの時、登録に失敗する' do
      @user.password = '111111'
      @user.valid?
      expect(@user.errors.full_messages).to include('Password は英字と数字の両方を含めて設定してください')
    end
  end
end
