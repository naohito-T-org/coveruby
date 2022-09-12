# coveruby

Ruby Scraping Tool.

## Prerequisites

- Please install ruby. (3.1.2)

## Usage

<details>
<summary>Show installation instructions.</summary>
<!-- インストール内容を記載する -->

</details>

<details>
<summary>Show execute.</summary>

```sh
$ bundle exec ruby scripts/scraping.rb -u [url]
```
</details>

## Options

defaultで全ての操作
そしてタグがあれば絞れる
findだと,で検索タグを複数増やせる
-hオプsyん　ーhtmlを実装

| Option                       | Required | Description                          |
|------------------------------|----------|--------------------------------------|
| -c, --csv                    |          | Output file format to CSV.           |
| -f, --filter [filter option] |          | Search filter                        | <!-- Search option 何かで渡せるようにすべきか？ -->
| -j, --json                   |          | Output file format to JSON.          |
| -n, --name [filename]        |          | File name. Default filename scraping |
| -o --output [path]           |          | File Output Destination              | <!-- 末尾が拡張子があればファイル名にしないといけない -->
| -t, --tag [html tag name]    |          | Refine Tags                          |
| -u, --url [url]              | ◯        | URL for scraping                     |
