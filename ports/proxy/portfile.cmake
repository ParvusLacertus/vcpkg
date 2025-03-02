vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO microsoft/proxy
    REF ${VERSION}
<<<<<<< HEAD
    SHA512 a0a95b1502bd9e4258d712f56549cd6b2f233040877bf1bd8c0814423a595eb6891f5e8075be48377c5ac42ed7ce55b034f1f91d85f6abefa45874cc4d3c51ee
=======
    SHA512 606624efad75004c0e5e72f361f3fcb6084e268f3085533d7f9b9ad7077e22b725d77db9512a50582463b9792997b3340216506368133f4a8064685530e296b2
>>>>>>> upstream/master
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        -DBUILD_TESTING=OFF
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug")
file(INSTALL "${SOURCE_PATH}/LICENSE" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME copyright)
