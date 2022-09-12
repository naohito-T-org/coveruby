# frozon_string_literal: true

require 'open-uri'
require 'nokogiri'
# @see https://docs.ruby-lang.org/ja/latest/library/optparse.html
require 'optparse'

module Coveruby
  # scraping
  class Scraping
    # 定義されていないoptionがでるとerrorがthrowされる（これをtryでwrapしてutilsに置きたい）
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

    def execute
      url = 'https://style.potepan.com/'

      charset = nil
      html = open(url) do |f|
        charset = f.charset
        f.read
      end
      page = Nokogiri::HTML.parse(html, nil, charset)
      p page.search('title').text
    end
  end
end

# entrypoint
Coveruby::Scraping.new.option_parse
