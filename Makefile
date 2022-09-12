# rubocop check
.PHONE: format
format:
	bundle exec rubocop

# rubocop fix -a オプションで実行するため基本的に安全な変更
.PHONE: fix.format
fix.format:
	bundle exec rubocop -l -a

# Make .rubocop_todo.yml
.PHONE: todo
todo:
	bundle exec rubocop --auto-gen-config