---
title: dconf read 取值查找順序 / demo-002
nav_order: 2012
has_children: false
parent: dconf read 取值查找順序
grand_parent: 關鍵點
---


# dconf read 取值查找順序 / demo-002

* /etc/dconf/profile/user

``` conf
service-db:keyfile/user
user-db:user
system-db:local
system-db:site
system-db:distro
```


| Proile Line | 儲存檔案路徑 | 取值查找順序 |
| --- | --- | --- |
| service-db:keyfile/user | ~/.config/dconf/user.txt | 設定值 |
| user-db:user | ~/.config/dconf/user | 預設值 1 |
| system-db:local | /etc/dconf/db/local | 預設值 2 |
| system-db:site | /etc/dconf/db/site | 預設值 3 |
| system-db:distro | /etc/dconf/db/distro | 預設值 4 |


> 第一行是 `service-db:keyfile/user`，所以是「設定值」儲存的所在

> 也就是當「dconf write」的時候，當跟預設值不同的時候，會寫入「~/.config/dconf/user.txt」


## Manpage

* man 7 [dconf](https://manpages.ubuntu.com/manpages/jammy/en/man7/dconf.7.html)
* man 1 [dconf](https://manpages.ubuntu.com/manpages/jammy/en/man1/dconf.1.html)
