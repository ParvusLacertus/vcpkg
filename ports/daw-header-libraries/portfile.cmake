# Header-only library
vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO beached/header_libraries
    REF "v${VERSION}"
<<<<<<< HEAD
    SHA512 ca0a661b2ae070dab764ec5466b8d77e587cfd05475968bd184b3845dbfe4bf91e488b2300b13fbc706d7918e0a1e5daa4a6d839ccc01077333df0798aa54016
=======
    SHA512 30065f22f79ae67dd68056f6d2d4b44c0391134526143207886bdf7acd95af03d6ae41d02f7bdc3433a0048f3df55a1debde0e42118d559eac83414044d6af77
>>>>>>> upstream/master
    HEAD_REF master
)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")

vcpkg_cmake_install()
vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/${PORT})

# remove empty lib and debug/lib directories (and duplicate files from debug/include)
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug" "${CURRENT_PACKAGES_DIR}/lib")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE.md")
