# gentoo-sf-fonts

A Gentoo overlay providing Apple SF Pro fonts (Display, Text, Rounded).

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


