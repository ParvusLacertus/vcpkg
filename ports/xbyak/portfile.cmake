string(REGEX REPLACE "^([0-9]+)[.]([1-9])\$" "\\1.0\\2" VERSION_STR "${VERSION}")
vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO herumi/xbyak
    REF "v${VERSION_STR}"
<<<<<<< HEAD
    SHA512 9a1786a4df98988bc73df95b6c713ed734de8274c35fcda3eff0c54308a3c33e88836d725830a72537ce654c96200caf0195ce13d7ed97c8125de72930edb79e
=======
    SHA512 244f2b9f09c0d012edd82e4e0ae6191f9b12a1282d43f67506171c20afbe4b883609f16860a095856f45e4bfa20b1aa45c7cdb3ddefd829c98245e72ccee8f65
>>>>>>> upstream/master
    HEAD_REF master
)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")
vcpkg_cmake_install()

vcpkg_cmake_config_fixup(CONFIG_PATH "lib/cmake/xbyak")

file(REMOVE_RECURSE
    "${CURRENT_PACKAGES_DIR}/debug"
    "${CURRENT_PACKAGES_DIR}/lib"
)

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/COPYRIGHT")
