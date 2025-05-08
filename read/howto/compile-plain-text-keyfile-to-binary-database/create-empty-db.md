---
title: dcnof / 如何產生「空的 Binary Database」
nav_order: 7010
has_children: false
parent: 如何將「Plain Text Keyfile」編譯成「Binary Database」
grand_parent: 如何
---


# dcnof / 如何產生「空的 Binary Database」




## 主題

* [範例](#範例)
* [操作步驟](#操作步驟)
* [Manpage](#manpage)
* [接下來](#接下來)




## 範例

| 範例 |
| ---- |
| [create-empty-db](https://github.com/samwhelp/note-about-dconf/blob/gh-pages/_demo/usage/dconf/compile/create-empty-db/db-create.sh) |




## 操作步驟

> 執行下面指令，產生一個資料夾，名稱為「`demo.d`」。

``` sh
mkdir -p demo.d
```



> 執行下面指令，產生「空的 Binary Database」，名稱為「`demo`」。

``` sh
dconf compile demo demo.d
```

> 執行下面指令

``` sh
file demo
```

顯示

```
demo: GVariant Database file, version 0
```




## Manpage

* [man 1 dcnof](https://manpages.debian.org/bookworm/dconf-cli/dconf.1.en.html)




## 接下來

> 接下來，我們要來了解『[如何將「Plain Text Keyfile」編譯成「Binary Database」](https://samwhelp.github.io/note-about-dconf/read/howto/compile-plain-text-keyfile-to-binary-database/create-empty-db.html)』
