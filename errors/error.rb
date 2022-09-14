# frozon_string_literal: true
require_relative "./base_error"


# アプリ独自例外の個別クラス
class MyInputError < Errors::BaseError
  attr_reader :code

  def initialize(code)
    super("Invalid Input: #{code}")
    @code = code
  end
end

# 使用方法
# begin
#   reise MyInputError.new(501)
# rescue MyInputError => e
#   puts e.message # 結果: Invalid Input 501
# end
