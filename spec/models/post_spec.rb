require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end
  describe 'ユーザー新規登録' do
    context '新規登録できる場合' do
      it 'titleとcontentとgenre_idが存在すれば登録できる' do
        expect(@post).to be_valid
      end
    end
    context '新規登録できない場合' do
      it 'titleが空では登録できない' do
        @post.title = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("Title can't be blank")
      end
      it 'contentが空では登録できない' do
        @post.content = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("Content can't be blank")
      end
      it 'genre_idが未選択では登録できない' do
        @post.genre_id = '1'
        @post.valid?
        expect(@post.errors.full_messages).to include("Genre can't be blank")
      end
      it 'userが紐付いていないと保存できない' do
        @post.user = nil
        @post.valid?
        expect(@post.errors.full_messages).to include('User must exist')
      end
    end
  end

end
