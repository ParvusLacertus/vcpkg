vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO facebook/mvfst
    REF "v${VERSION}"
<<<<<<< HEAD
    SHA512 42d0a49f218878b059a2dba55ca2b571489638a500afdafd86f6770510fffa72e837e85955d8db7d89fbda622541b8455657b277afb03f6c7246245272226bd1
=======
<<<<<<< HEAD
    SHA512 e032f433f460f4377f0ff2e30db605b7ea31f42df561adaea42db27040a652fcb851e99fd1c9b9f4095de6a2df12ccb51c8699c131256466bb5fc9eff90d1011
=======
    SHA512 cadbef66d12b4103e0f5a6a7fb56e4ac704d6053dc571fc8777ae573d067e7c3f21d68a98dc363bd7213a4c91b786aa7d7bc87bf7bae971b2a75ad3c82dfdb5d
>>>>>>> upstream/master
>>>>>>> 874d5b2898d28dcfd2b1620799965d843c8d08df
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        -DBUILD_TESTS=OFF
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/mvfst)
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
