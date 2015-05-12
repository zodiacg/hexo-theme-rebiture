# hexo-theme-rebiture

## Introduction

A Swig-rewritten version of [Biture theme](http://github.com/kywk/hexo-theme-biture) with several small modification. The theme is also optimised for usage in mainland China.

Biture is a single column, widget-less minimalist theme for [Hexo](http://hexo.io), based on [Pure](http://purecss.io/) css framework.

Preview: [zodiacg](http://zodiacg.net)

## Features

- Support Duoshuo or Disqus comment system.
- Support Google Universal Analytics and Baidu Analytics.
- Place your custom html code in _custom directory.

## Installation

### Install

``` bash
$ git clone https://github.com/zodiacg/hexo-theme-rebiture.git themes/rebiture
```

### Enable

Modify `theme` setting in `_config.yml` to `rebiture`.

### Update

Backup your _config.yml and _custom directory first.

``` bash
cd themes/rebiture
git pull
```

## Configuration

### _config.yml file

``` yml
# Header
menu:
    home: /
    dropdown menu:
        google: //google.com/
        yahoo: //yahoo.com/

extmenu:
    github:
        kywk: //github.com/kywk/
        zodiacg: //github.com/zodiacg/
    hexo: //zespia.tw/hexo/
    theme:
        biture: //github.com/kywk/hexo-theme-biture
        rebiture: //github.com/zodiacg/hexo-theme-rebiture
        landscape: //github.com/tommy351/hexo-theme-landscape
        light: //github.com/tommy351/hexo-theme-light

# Content
excerpt_link: Read More

fancybox: true
```

- **menu** - Main navigation menu, dropdown menu supported.
- **extment** - Extend menu at the right hand side, dropdown menu supported too.
- **excerpt_link** - "Read More" link at the bottom of excerpted articles. `false` to hide the link.
- **fancybox** - KEEP IT 'true'

Please config analytics system or comment system in site config file.

### _custom directory

There is a **_custom** directory in **layout** with two files under it.
Code in these two files (HTML or Swig) will be insert into every page of the site automaticly.

- **custom_head.swig** will be placed right before ```</head>```
- **custom_footer.swig** will be placed right before ```</body>```

It's useful if you want to add your own scripts or use analytic tools other than Google or Baidu.