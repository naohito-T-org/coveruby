# frozen_string_literal: true

source "https://rubygems.org"

# この書き方はversion固定
ruby "3.1.2"

gem "nokogiri", "~> 1.13.8"
# RSpecのように、テスト専用のGemの場合、実運用のときにrequireしても無駄にしかならないので、require: falseとして、必要に応じて手動でrequireする、という運用にすることがあります
# これでbundle installでインストールされなくなる
gem "rubocop", "~> 1.30.0", require: false
