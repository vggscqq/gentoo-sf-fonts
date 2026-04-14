#!/usr/bin/env bash
# Creates a release tarball of the SF Pro fonts for use with the Gentoo ebuild.
# Run this from the root of the repo.

set -euo pipefail

VERSION="${1:-1.0}"
TARBALL="sf-pro-fonts-${VERSION}.tar.gz"
STAGING="sf-pro-fonts-${VERSION}"

echo "Creating tarball ${TARBALL} ..."

mkdir -p "${STAGING}"
cp -- fonts/*.otf fonts/*.ttf "${STAGING}/"
tar -czf "${TARBALL}" "${STAGING}"
rm -rf "${STAGING}"

echo "Done: ${TARBALL}"
echo
echo "Next steps:"
echo "  1. Create a GitHub release tagged v${VERSION} on https://github.com/vggscqq/gentoo-sf-fonts"
echo "  2. Upload ${TARBALL} as a release asset."
echo "  3. Run: ebuild media-fonts/sf-pro/sf-pro-${VERSION}.ebuild manifest"
echo "     (requires Portage and DISTDIR set, or copy the tarball to your distfiles dir first)"
