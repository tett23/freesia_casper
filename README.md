# freesia_casper

freesiaのテスト用

## 環境構築


> $ sudo aptitude install otf-ipafont-gothic
>
> $ sudo vim /etc/fonts/fonts.conf
> <?xml version="1.0"?>
> <!DOCTYPE fontconfig SYSTEM "fonts.dtd">
>
> <fontconfig>
> <dir>/usr/share/fonts/opentype/ipafont</dir>
> <cachedir>/var/cache/fontconfig</cachedir>
> <cachedir>~/.fontconfig</cachedir>
> <alias>
> <family>serif</family>
> <prefer>
> <family>IPAP Mincho</family>
> </prefer>
> </alias>
>
> <alias>
> <family>sans serif</family>
> <prefer>
> <family>IPAP Gothic</family>
> </prefer>
> </alias>
>
> <alias>
> <family>monospace</family>
> <prefer>
> <family>IPA Gothic</family>
> </prefer>
> </alias>
> </fontconfig>
>
> $ fc-cache
