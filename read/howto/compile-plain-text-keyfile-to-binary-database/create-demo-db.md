---
title: dcnof / 如何將「Plain Text Keyfile」編譯成「Binary Database」
nav_order: 7010
has_children: false
parent: 如何將「Plain Text Keyfile」編譯成「Binary Database」
grand_parent: 如何
---


# dcnof / 如何產生「空的 Binary Database」




## 主題

* [範例](#範例)
* [前提](#前提)
* [操作步驟](#操作步驟)
* [Manpage](#manpage)




## 範例

| 範例 |
| ---- |
| [create-demo-db](https://github.com/samwhelp/note-about-dconf/blob/gh-pages/_demo/usage/dconf/compile/create-demo-db/db-create.sh) |
| [create-user-db](https://github.com/samwhelp/note-about-dconf/blob/gh-pages/_demo/usage/dconf/compile/create-user-db/db-create.sh) |




## 前提

延續前一篇提到的『[如何產生「空的 Binary Database」](https://samwhelp.github.io/note-about-dconf/read/howto/compile-plain-text-keyfile-to-binary-database/create-empty-db.html)』，接下來，我們要來了解『如何將「Plain Text Keyfile」編譯成「Binary Database」』




## 操作步驟

> 執行下面指令，產生一個資料夾，名稱為「`demo.d`」。

``` sh
mkdir -p demo.d

```


> 執行下面指令，產生一個「Keyfile」，名稱為「`10_subject_001.conf`」放到「`demo.d`」這個資料夾。

``` sh

cat > demo.d/10_subject_001.conf << __EOF__
[path/subject/001]
item-001="value-001"
item-002="value-001"
__EOF__

```


> 執行下面指令，產生另一個「Keyfile」，名稱為「`20_subject_002.conf`」放到「`demo.d`」這個資料夾。

``` sh

cat > demo.d/20_subject_002.conf << __EOF__
[path/subject/002]
item-001="value-001"
item-002="value-001"
__EOF__

```


> 執行下面指令，產生「Binary Database」，名稱為「`demo`」。

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

> 執行下面指令

``` sh
grep 'item-001' demo
```

顯示

```
grep: demo: binary file matches
```

> 執行下面指令

``` sh
grep -a 'item-001' demo
```

顯示類似如下(...那部份是亂碼，我用「...」來表示)

```
GVariant(	... item-001value-001spath/002//item-002value-001sitem-001value-001ssubjectitem-002value-001s001/
```




## Manpage

* [man 1 dcnof](https://manpages.debian.org/bookworm/dconf-cli/dconf.1.en.html)
* [man 1 grep](https://manpages.debian.org/bookworm/grep/grep.1.en.html)
