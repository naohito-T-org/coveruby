# frozon_string_literal: true

# アプリ固有の基底errorクラス
class MyAppError < StandardError
end

# アプリ独自例外の個別クラス
class MyInputError < MyAppError
  attr_reader :code

  def initialize(code)
    super("Invalid Input: #{code}")
    @code = code
  end
end

begin
  reise MyInputError.new(501)
rescue MyInputError => e
  puts e.message # 結果: Invalid Input
end
