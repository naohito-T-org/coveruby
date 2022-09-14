# frozon_string_literal: true
require 'optparse'
# クラス化してインスタンス化をするのであれば、何かモノとみなすということ
# だからstaticなmethodの集まりにする。
module Utils
  # Util
  class Util
    class << self
      def option_parse
        opt = OptionParser.new

        opt.on('-a') { |v| p v }
        opt.on('-b') { |v| p v }

        puts "$0: #{$0}"
        opt.parse!(ARGV)

        ARGV.each_with_index do |arg, i|
          puts "ARGV[#{i}]: #{arg}"
        end
      end
    end
  end
end
