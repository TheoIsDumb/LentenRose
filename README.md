# sddm-theme

An elegant theme for [SDDM](https://github.com/sddm/sddm).

Forked from [Sugar Candy](https://framagit.org/MarianArlt/sddm-sugar-candy).

## Installation

1. Clone the repo

`git clone https://github.com/theoisdumb/sddm-theme.git`

2. Copy repo to SDDM Themes directory

`sudo cp -ar sddm-theme /usr/share/sddm/themes`

3. Edit SDDM configuration file

> SDDM configuration could either be:
> 1. /etc/sddm.conf
> 2. /usr/lib/sddm/sddm.conf.d/default.conf 
> 3. /etc/sddm.conf.d/kde_settings.conf (KDE uses this)

`sudo vim $SDDMCONFIG`

4. Set theme's name in [Theme] section

```
[Theme]
Current=sddm-theme
```