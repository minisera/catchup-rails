require 'rails_helper'

RSpec.describe Book, type: :model do
  it "Bookモデルをnewしたときnilでないこと" do
    expect(Book.new).not_to eq(nil)
  end

  describe 'Book#title_with_author' do
    it 'メソッドが呼び出された時、titleとauthorが結んだ文字が出力されること' do
      book = Book.new(title: '鉄人シリーズ', author: 'ミミック')
      expect(book.title_with_author).to eq('鉄人シリーズ - ミミック')
    end
  end
end
