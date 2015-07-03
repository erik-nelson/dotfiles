" =============================================================================
"
"   Program:   CMake - Cross-Platform Makefile Generator
"   Module:    $RCSfile: cmake-syntax.vim,v $
"   Language:  VIM
"   Date:      $Date: 2006/04/18 14:32:28 $
"   Version:   $Revision: 1.4 $
"
" =============================================================================

" Vim syntax file
" Language:     CMake
" Author:       Andy Cedilnik <andy.cedilnik@kitware.com>
" Maintainer:   Andy Cedilnik <andy.cedilnik@kitware.com>
" Last Change:  $Date: 2006/04/18 14:32:28 $
" Version:      $Revision: 1.4 $
"
" Licence:      The CMake license applies to this file. See
"               http://www.cmake.org/HTML/Copyright.html
"               This implies that distribution with Vim is allowed

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore
syn match cmakeComment /#.*$/
syn region cmakeRegistry start=/\[/ end=/\]/ skip=/\\[\[\]]/
            \ contained
syn match cmakeArgument /[^()"]+/
            \ contained
syn match cmakeVariableValue /\${[^}]*}/
            \ contained oneline
syn match cmakeEnvironment /\$ENV{.*}/
            \ contained
syn keyword cmakeSystemVariables
            \ WIN32 UNIX APPLE CYGWIN BORLAND MINGW MSVC MSVC_IDE MSVC60 MSVC70 MSVC71 MSVC80 win32 unix apple cygwin borland mingw msvc msvc_ide msvc60 msvc70 msvc71 msvc80
syn keyword cmakeOperators
            \ AND BOOL CACHE COMMAND DEFINED DOC EQUAL EXISTS FALSE GREATER INTERNAL LESS MATCHES NAME NAMES NAME_WE NOT OFF ON OR PATH PATHS PROGRAM STREQUAL STRGREATER STRING STRLESS TRUE and bool cache command defined doc equal exist false greater internal less matches name names name_we not off on or path paths program strequal strgreater string strless true
"            \ contained
syn region cmakeString start=/"/ end=/"/ skip=/\\"/
            \ contains=ALLBUT,cmakeString
syn region cmakeArguments start=/\s*(/ end=/)/
           \ contains=ALLBUT,cmakeArguments
syn keyword cmakeDeprecated ABSTRACT_FILES BUILD_NAME SOURCE_FILES SOURCE_FILES_REMOVE VTK_MAKE_INSTANTIATOR VTK_WRAP_JAVA VTK_WRAP_PYTHON VTK_WRAP_TCL WRAP_EXCLUDE_FILES abstract_files build_name source_files source_files_remove vtk_make_instantiator vtk_wrap_java vtk_wrap_python vtk_wrap_tcl wrap_exclude_files
           \ nextgroup=cmakeArgument
syn keyword cmakeStatement
           \ ADD_CUSTOM_COMMAND ADD_CUSTOM_TARGET ADD_DEFINITIONS ADD_DEPENDENCIES ADD_EXECUTABLE ADD_LIBRARY ADD_SUBDIRECTORY ADD_TEST AUX_SOURCE_DIRECTORY BUILD_COMMAND BUILD_NAME CMAKE_MINIMUM_REQUIRED CONFIGURE_FILE CREATE_TEST_SOURCELIST ELSE ENABLE_LANGUAGE ENABLE_TESTING ENDFOREACH ENDIF ENDWHILE EXEC_PROGRAM EXECUTE_PROCESS EXPORT_LIBRARY_DEPENDENCIES FILE FIND_FILE FIND_LIBRARY FIND_PACKAGE FIND_PATH FIND_PROGRAM FLTK_WRAP_UI FOREACH GET_CMAKE_PROPERTY GET_DIRECTORY_PROPERTY GET_FILENAME_COMPONENT GET_SOURCE_FILE_PROPERTY GET_TARGET_PROPERTY GET_TEST_PROPERTY IF INCLUDE INCLUDE_DIRECTORIES INCLUDE_EXTERNAL_MSPROJECT INCLUDE_REGULAR_EXPRESSION INSTALL INSTALL_FILES INSTALL_PROGRAMS INSTALL_TARGETS LINK_DIRECTORIES LINK_LIBRARIES LIST LOAD_CACHE LOAD_COMMAND MACRO MAKE_DIRECTORY MARK_AS_ADVANCED MATH MESSAGE OPTION OUTPUT_REQUIRED_FILES PROJECT QT_WRAP_CPP QT_WRAP_UI REMOVE REMOVE_DEFINITIONS SEPARATE_ARGUMENTS SET SET_DIRECTORY_PROPERTIES SET_SOURCE_FILES_PROPERTIES SET_TARGET_PROPERTIES SET_TESTS_PROPERTIES SITE_NAME SOURCE_GROUP STRING SUBDIR_DEPENDS SUBDIRS TARGET_LINK_LIBRARIES TRY_COMPILE TRY_RUN USE_MANGLED_MESA UTILITY_SOURCE VARIABLE_REQUIRES VTK_MAKE_INSTANTIATOR VTK_WRAP_JAVA VTK_WRAP_PYTHON VTK_WRAP_TCL WHILE WRITE_FILE add_custom_command add_custom_target add_definitions add_dependencies add_executable add_library add_subdirectory add_test aux_source_directory build_command build_name cmake_minimum_required configure_file create_test_sourcelist else enable_language enable_testing endforeach endif endwhile exec_program execute_process export_library_dependencies file find_file find_library find_package find_path find_program fltk_wrap_ui foreach get_cmake_property get_directory_property get_filename_component get_source_file_property get_target_property get_test_property if include include_directories include_external_msproject include_regular_expression install install_files install_programs install_targets link_directories link_libraries list load_cache load_command macro make_directory mark_as_advanced math message option output_required_files project qt_wrap_cpp qt_wrap_ui remove remove_definitions separate_arguments set set_directory_properties set_source_files_properties set_target_properties set_tests_properties site_name source_group string subdir_depends subdirs target_link_libraries try_compile try_run use_mangled_mesa utility_source variable_requires vtk_make_instantiator vtk_wrap_java vtk_wrap_python vtk_wrap_tcl while write_file
           \ nextgroup=cmakeArgumnts

"syn match cmakeMacro /^\s*[A-Z_]\+/ nextgroup=cmakeArgumnts

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_cmake_syntax_inits")
  if version < 508
    let did_cmake_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink cmakeStatement Statement
  HiLink cmakeComment Comment
  HiLink cmakeString String
  HiLink cmakeVariableValue Preproc
  HiLink cmakeRegistry String
  HiLink cmakeArguments String
  HiLink cmakeArgument String
  HiLink cmakeEnvironment String
  HiLink cmakeOperators String
  HiLink cmakeMacro PreProc
  HiLink cmakeError	Error

  delcommand HiLink
endif

let b:current_syntax = "cmakesyntax"

"EOF"
