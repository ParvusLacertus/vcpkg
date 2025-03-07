vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO facebookincubator/fizz
    REF "v${VERSION}"
<<<<<<< HEAD
    SHA512 774c73081c1e3b4f72463468cd373c948589f3f2de0ae43a5f449ef81a7bfbafa6038a4b0cc18e525b4be47586af3c491ba43f24006d778afcab95d3360efea6
=======
<<<<<<< HEAD
    SHA512 cc3f86efaad98599f1b66731ff6ea54dd53c7433c41e8f90dbfaaf3267ce66dc0d9fcb36dde97d343cd53d0c3dece4bb8e0aaacc338be208d5dd25354d3726f8
=======
    SHA512 43ce493f1c3620f993088c2fbe1519bfcac1db2b46977eac91df8088a63aa62fe1173315ad6fae08a0ec3335e2420fb2c4c16be9d9453495398b6d67f67aad15
>>>>>>> upstream/master
>>>>>>> 874d5b2898d28dcfd2b1620799965d843c8d08df
    HEAD_REF main
    PATCHES
        fix-build.patch
)

# Prefer installed config files
file(REMOVE
    "${SOURCE_PATH}/fizz/cmake/FindGMock.cmake"
    "${SOURCE_PATH}/fizz/cmake/FindGflags.cmake"
    "${SOURCE_PATH}/fizz/cmake/FindGlog.cmake"
    "${SOURCE_PATH}/fizz/cmake/FindLibevent.cmake"
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}/fizz"
    OPTIONS
        -DBUILD_TESTS=OFF
        -DBUILD_EXAMPLES=OFF
        -DINCLUDE_INSTALL_DIR:STRING=include
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/fizz)
vcpkg_copy_pdbs()

vcpkg_replace_string("${CURRENT_PACKAGES_DIR}/share/fizz/fizz-config.cmake" "lib/cmake/fizz" "share/fizz")

file(REMOVE_RECURSE
    "${CURRENT_PACKAGES_DIR}/debug/include"
    "${CURRENT_PACKAGES_DIR}/include/fizz/crypto/aead/test/facebook"
    "${CURRENT_PACKAGES_DIR}/include/fizz/record/test/facebook"
    "${CURRENT_PACKAGES_DIR}/include/fizz/server/test/facebook"
    "${CURRENT_PACKAGES_DIR}/include/fizz/tool/test"
    "${CURRENT_PACKAGES_DIR}/include/fizz/util/test")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
