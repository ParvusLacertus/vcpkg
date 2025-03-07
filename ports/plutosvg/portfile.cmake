vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO sammycage/plutosvg
    REF "v${VERSION}"
<<<<<<< HEAD
    SHA512 31f989aef2329ac41c19f8c4852f5a1d5c37dc7726192d230ba2a74262bdc6356facf3295b4d8a05f2be79ba313bcc3f01bd52e4024382c9ce09e259a5421440
    HEAD_REF master
    PATCHES
        find-package-plutovg.diff
=======
    SHA512 f0f2251cfb91f48b125299ec910d64181f03c14e683e1d497e2aa3f17713f5c7848247e3b7bdb6cf0dee8d98a7d25e85f7fcc440cbe55401c16fe5d1f0df1a10
    HEAD_REF master
>>>>>>> upstream/master
)

vcpkg_check_features(OUT_FEATURE_OPTIONS FEATURE_OPTIONS
    FEATURES
        freetype PLUTOSVG_ENABLE_FREETYPE
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        ${FEATURE_OPTIONS}
        -DPLUTOSVG_BUILD_EXAMPLES=OFF
<<<<<<< HEAD
=======
        -DCMAKE_REQUIRE_FIND_PACKAGE_plutovg=1
>>>>>>> upstream/master
)
vcpkg_cmake_install()
vcpkg_copy_pdbs()
vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/plutosvg)

if(VCPKG_LIBRARY_LINKAGE STREQUAL "static")
    vcpkg_replace_string("${CURRENT_PACKAGES_DIR}/include/plutosvg/plutosvg.h" "defined(PLUTOSVG_BUILD_STATIC)" "1")
endif()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
