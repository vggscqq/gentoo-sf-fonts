# gentoo-sf-fonts

A Gentoo overlay providing Apple SF Pro fonts (Display, Text, Rounded).

## Install the overlay

Using `eselect-repository` (recommended):

```sh
eselect repository add sf-fonts git https://github.com/vggscqq/gentoo-sf-fonts.git
emaint sync -r sf-fonts
```

Or with `layman`:

```sh
layman -o https://raw.githubusercontent.com/vggscqq/gentoo-sf-fonts/main/layman.xml -f -a sf-fonts
```

## Install the fonts

```sh
emerge -av media-fonts/sf-pro
```

You will be prompted to accept the `Apple-WWDC-2019` license:

```sh
LICENSE="Apple-WWDC-2019"
```

To pre-accept it, add to `/etc/portage/package.license`:

```
media-fonts/sf-pro Apple-WWDC-2019
```

## Maintainer: releasing a new version

1. Place the font `.otf`/`.ttf` files in the repo root.
2. Run `./create-tarball.sh <version>` to produce `sf-pro-fonts-<version>.tar.gz`.
3. Create a GitHub release tagged `v<version>` and upload the tarball as a release asset.
4. Copy the tarball to your portage distfiles directory and run:
   ```sh
   ebuild media-fonts/sf-pro/sf-pro-<version>.ebuild manifest
   ```
5. Commit the updated `Manifest`.
