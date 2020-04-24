find_program(XDG_DESKTOP_MENU_EXECUTABLE xdg-desktop-menu)
set(XDG_APPS_INSTALL_DIR ${CMAKE_INSTALL_PREFIX}/share/applications)

macro(XDG_INSTALL DESKTOP_FILE ICON_XPM ICON_PNG ICON_SVG)
	install(FILES ${DESKTOP_FILE} DESTINATION ${XDG_APPS_INSTALL_DIR})
	install(FILES ${ICON_XPM} DESTINATION ${CMAKE_INSTALL_PREFIX}/share/pixmaps)
	install(FILES ${ICON_PNG} DESTINATION ${CMAKE_INSTALL_PREFIX}/share/icons/hicolor/48x48/apps)
	install(FILES ${ICON_SVG} DESTINATION ${CMAKE_INSTALL_PREFIX}/share/icons/hicolor/scalable/apps)
	#if(XDG_DESKTOP_MENU_EXECUTABLE)
	#	install(CODE "execute_process(COMMAND ${XDG_DESKTOP_MENU_EXECUTABLE} install --novendor ${XDG_APPS_INSTALL_DIR}/${DESKTOP_FILE})")
	#endif()
endmacro()
