macro(add_zip_archive _dir _filetype)
	file(GLOB_RECURSE archive_src RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} ${_dir}/*.${_filetype})
	add_custom_command(
		OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/${_dir}.zip
		COMMAND zip ${CMAKE_CURRENT_BINARY_DIR}/${_dir}.zip ${archive_src}
		DEPENDS ${archive_src}
		WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
		VERBATIM
		)
	add_custom_target(${_dir}_zip ALL DEPENDS ${CMAKE_CURRENT_BINARY_DIR}/${_dir}.zip)
#	install(FILES ${CMAKE_CURRENT_BINARY_DIR}/${_dir].zip DESTINATION /usr)
endmacro(add_zip_archive _dir _filetype)


add_zip_archive(gfx bmp)
add_zip_archive(sounds wav)
add_zip_archive(scripts lua)
add_zip_archive(backgrounds bmp)
add_zip_archive(rules lua)

set(install_files
	${CMAKE_CURRENT_BINARY_DIR}/gfx.zip
	${CMAKE_CURRENT_BINARY_DIR}/sounds.zip
	${CMAKE_CURRENT_BINARY_DIR}/scripts.zip
	${CMAKE_CURRENT_BINARY_DIR}/backgrounds.zip
	${CMAKE_CURRENT_BINARY_DIR}/rules.zip
	Icon.bmp
	config.xml
	inputconfig.xml
	server.xml
	lang_de.xml
	lang_en.xml
	lang_fr.xml
	lang_it.xml
	api.lua
	bot_api.lua
	rules_api.lua)

if (WIN32)
	install(FILES ${install_files} DESTINATION data)
elseif (UNIX)
	install(FILES ${install_files} DESTINATION share/blobby)
elseif (SWITCH)
	install(FILES ${install_files} DESTINATION data)
	install(DIRECTORY DESTINATION data/replays)
endif (WIN32)
