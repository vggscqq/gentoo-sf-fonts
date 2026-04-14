# gentoo-sf-fonts

A Gentoo overlay providing Apple SF Pro fonts (Display, Text, Rounded) and SF Mono Nerd Font.

## Install the overlay

Using `eselect-repository` (recommended):

```sh
eselect repository add sf-fonts git https://github.com/vggscqq/gentoo-sf-fonts.git
emaint sync -r sf-fonts
```

## Install the fonts

```sh
emerge -av media-fonts/sf-pro
```

## Credits

- SF Mono Nerd Font patches: [epk/SF-Mono-Nerd-Font](https://github.com/epk/SF-Mono-Nerd-Font)
- San Francisco Pro Fonts: [sahibjotsaggu/San-Francisco-Pro-Fonts](https://github.com/sahibjotsaggu/San-Francisco-Pro-Fonts)