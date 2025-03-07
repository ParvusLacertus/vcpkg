vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO facebook/proxygen
    REF "v${VERSION}"
<<<<<<< HEAD
    SHA512 d1790c3692177f143a8c10eed6948c4b1a2d7a8e696fd75b5c4d399f5241c8188e115839c7362e76bc1dc72192d4af5d955d3f424f491c784bc160098d5e3f9d
=======
<<<<<<< HEAD
    SHA512 71bce0b7471a7b9c2ba054cf33a21317f36f445ace0db92653a07dc08eddd27a4b687e4c4127478279f3f16485eb249e0d287652c5694580af9104f4c9fdd1e3
=======
    SHA512 963523d8c67074aad137f22488d0b0c6143036672c7f4d8fe59ea2d3509e419908193610870b129405b82e230866195311c2fc47d3e09d857967dbd95631f150
>>>>>>> upstream/master
>>>>>>> 874d5b2898d28dcfd2b1620799965d843c8d08df
    HEAD_REF main
    PATCHES
        remove-register.patch
        fix-zstd-zlib-dependency.patch
        fix-dependency.patch
)

vcpkg_find_acquire_program(PYTHON3)
get_filename_component(PYTHON3_PATH "${PYTHON3}" DIRECTORY)
vcpkg_add_to_path(${PYTHON3_PATH})

vcpkg_add_to_path(PREPEND "${CURRENT_HOST_INSTALLED_DIR}/tools/gperf")

vcpkg_cmake_configure(
    SOURCE_PATH ${SOURCE_PATH}
)

vcpkg_cmake_install()

vcpkg_copy_tools(TOOL_NAMES hq proxygen_curl proxygen_echo proxygen_h3datagram_client proxygen_httperf2 proxygen_proxy proxygen_push proxygen_static AUTO_CLEAN)

vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/proxygen)
vcpkg_copy_pdbs()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

if(VCPKG_LIBRARY_LINKAGE STREQUAL "static")
    file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/bin" "${CURRENT_PACKAGES_DIR}/debug/bin")
endif()

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
