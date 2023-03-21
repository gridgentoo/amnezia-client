if(WIN32)
    set(RootDir "@RootDir@")
    configure_file(
        ${CMAKE_CURRENT_LIST_DIR}/config/windows.xml.in
        ${CMAKE_CURRENT_LIST_DIR}/config/windows.xml
    )
elseif(APPLE AND NOT IOS)
    configure_file(
        ${CMAKE_CURRENT_LIST_DIR}/config/macos.xml.in
        ${CMAKE_CURRENT_LIST_DIR}/config/macos.xml
    )
elseif(LINUX)
    set(ApplicationsDir "@ApplicationsDir@")
    configure_file(
        ${CMAKE_CURRENT_LIST_DIR}/config/linux.xml.in
        ${CMAKE_CURRENT_LIST_DIR}/config/linux.xml
    )
endif()

configure_file(
    ${CMAKE_CURRENT_LIST_DIR}/packages/org.amneziavpn.package/meta/package.xml.in
    ${CMAKE_CURRENT_LIST_DIR}/packages/org.amneziavpn.package/meta/package.xml
)