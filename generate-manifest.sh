#!/usr/bin/env bash
# Generates media-fonts/sf-pro/Manifest on any Linux machine (no Portage needed).
# Requires: openssl, coreutils (md5sum, sha1sum, sha256sum, sha512sum, b2sum)
# All available on Arch Linux via core/openssl and core/coreutils.

set -euo pipefail

VERSION="${1:-1.0}"
TARBALL="sf-pro-fonts-${VERSION}.tar.gz"

if [[ ! -f "${TARBALL}" ]]; then
    echo "Error: ${TARBALL} not found. Run ./create-tarball.sh first." >&2
    exit 1
fi

SIZE=$(stat -c%s "${TARBALL}")
BLAKE2B=$(openssl dgst -blake2b512 "${TARBALL}" | awk '{print $2}')
BLAKE2S=$(openssl dgst -blake2s256 "${TARBALL}" | awk '{print $2}')
MD5=$(md5sum "${TARBALL}" | awk '{print $1}')
RMD160=$(openssl dgst -provider legacy -provider default -ripemd160 "${TARBALL}" | awk '{print $2}')
SHA1=$(sha1sum "${TARBALL}" | awk '{print $1}')
SHA256=$(sha256sum "${TARBALL}" | awk '{print $1}')
SHA3_256=$(openssl dgst -sha3-256 "${TARBALL}" | awk '{print $2}')
SHA3_512=$(openssl dgst -sha3-512 "${TARBALL}" | awk '{print $2}')
SHA512=$(sha512sum "${TARBALL}" | awk '{print $1}')
WHIRLPOOL=$(openssl dgst -provider legacy -provider default -whirlpool "${TARBALL}" | awk '{print $2}')

MANIFEST="media-fonts/sf-pro/Manifest"
cat > "${MANIFEST}" <<EOF
DIST ${TARBALL} ${SIZE} BLAKE2B ${BLAKE2B} BLAKE2S ${BLAKE2S} MD5 ${MD5} RMD160 ${RMD160} SHA1 ${SHA1} SHA256 ${SHA256} SHA3_256 ${SHA3_256} SHA3_512 ${SHA3_512} SHA512 ${SHA512} WHIRLPOOL ${WHIRLPOOL}
EOF

echo "Written: ${MANIFEST}"
cat "${MANIFEST}"
