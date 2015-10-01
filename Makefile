#############################################################################
# Makefile for building: PathFinding
# Generated by qmake (3.0) (Qt 5.4.0)
# Project:  PathFinding.pro
# Template: app
# Command: /mnt/WesternDigital/mxe/usr/bin/i686-w64-mingw32.static-qmake-qt5 -o Makefile PathFinding.pro
#############################################################################

MAKEFILE      = Makefile

first: release
install: release-install
uninstall: release-uninstall
QMAKE         = /mnt/WesternDigital/mxe/usr/bin/i686-w64-mingw32.static-qmake-qt5
DEL_FILE      = rm -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
COPY          = cp -f
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
INSTALL_FILE  = cp -f
INSTALL_PROGRAM = cp -f
INSTALL_DIR   = $(COPY_DIR)
DEL_FILE      = rm -f
SYMLINK       = 
DEL_DIR       = rmdir
MOVE          = mv -f
SUBTARGETS    =  \
		release \
		debug


release: FORCE
	$(MAKE) -f $(MAKEFILE).Release
release-make_first: FORCE
	$(MAKE) -f $(MAKEFILE).Release 
release-all: FORCE
	$(MAKE) -f $(MAKEFILE).Release all
release-clean: FORCE
	$(MAKE) -f $(MAKEFILE).Release clean
release-distclean: FORCE
	$(MAKE) -f $(MAKEFILE).Release distclean
release-install: FORCE
	$(MAKE) -f $(MAKEFILE).Release install
release-uninstall: FORCE
	$(MAKE) -f $(MAKEFILE).Release uninstall
debug: FORCE
	$(MAKE) -f $(MAKEFILE).Debug
debug-make_first: FORCE
	$(MAKE) -f $(MAKEFILE).Debug 
debug-all: FORCE
	$(MAKE) -f $(MAKEFILE).Debug all
debug-clean: FORCE
	$(MAKE) -f $(MAKEFILE).Debug clean
debug-distclean: FORCE
	$(MAKE) -f $(MAKEFILE).Debug distclean
debug-install: FORCE
	$(MAKE) -f $(MAKEFILE).Debug install
debug-uninstall: FORCE
	$(MAKE) -f $(MAKEFILE).Debug uninstall

Makefile: PathFinding.pro ../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/win32-g++/qmake.conf ../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/spec_pre.prf \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/qdevice.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/device_config.prf \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/common/shell-unix.conf \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/qconfig.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_3d.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_3d_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_3dquick.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_3dquick_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_axbase.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_axbase_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_axcontainer.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_axcontainer_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_axserver.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_axserver_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_bluetooth.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_bluetooth_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_clucene_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_concurrent.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_concurrent_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_core.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_core_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_dbus.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_dbus_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_declarative.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_declarative_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_enginio.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_enginio_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_gui.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_gui_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_help.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_help_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_location.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_location_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_multimedia.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_multimedia_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_multimediawidgets.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_multimediawidgets_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_network.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_network_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_nfc.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_nfc_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_opengl.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_opengl_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_openglextensions.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_platformsupport_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_positioning.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_positioning_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_printsupport.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_printsupport_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_publishsubscribe.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_publishsubscribe_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_qml.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_qml_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_qmldevtools_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_qmltest.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_qmltest_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_quick.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_quick_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_quickparticles_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_quickwidgets.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_quickwidgets_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_script.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_script_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_scripttools.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_scripttools_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_sensors.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_sensors_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_serialport.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_serialport_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_serviceframework.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_serviceframework_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_sql.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_sql_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_svg.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_svg_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_systeminfo.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_systeminfo_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_testlib.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_testlib_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_uitools.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_uitools_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_webchannel.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_webchannel_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_websockets.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_websockets_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_widgets.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_widgets_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_winextras.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_winextras_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_xml.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_xml_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_xmlpatterns.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_xmlpatterns_private.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_dsengine.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qdds.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qgenericbearer.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qicns.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qico.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qjp2.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qminimal.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qmldbg_inspector.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qmldbg_qtquick2.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qmldbg_tcp.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qmldbg_tcp_qtdeclarative.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qmng.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qnativewifibearer.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qsqlite.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qsqlodbc.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qsqlpsql.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qsqltds.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qsvg.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qsvgicon.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtaudio_windows.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtga.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtgeoservices_nokia.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtgeoservices_osm.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtiff.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtmedia_audioengine.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtmultimedia_m3u.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtposition_positionpoll.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtsensorgestures_plugin.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtsensorgestures_shakeplugin.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtsensors_dummy.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtsensors_generic.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qwbmp.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qwebp.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qwindows.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_windowsprintersupport.pri \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/qt_functions.prf \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/qt_config.prf \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/win32/qt_config.prf \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/win32-g++/qmake.conf \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/spec_post.prf \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/exclusive_builds.prf \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/default_pre.prf \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/win32/default_pre.prf \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/resolve_config.prf \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/exclusive_builds_post.prf \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/default_post.prf \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/win32/rtti.prf \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/precompile_header.prf \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/warn_on.prf \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/qt.prf \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/resources.prf \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/moc.prf \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/win32/opengl.prf \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/uic.prf \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/win32/windows.prf \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/testcase_targets.prf \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/exceptions.prf \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/yacc.prf \
		../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/lex.prf \
		PathFinding.pro \
		/mnt/WesternDigital/mxe/usr/i686-w64-mingw32.static/qt5/lib/qtmain.prl \
		/mnt/WesternDigital/mxe/usr/i686-w64-mingw32.static/qt5/lib/Qt5Core.prl \
		/mnt/WesternDigital/mxe/usr/i686-w64-mingw32.static/qt5/lib/Qt5Widgets.prl \
		/mnt/WesternDigital/mxe/usr/i686-w64-mingw32.static/qt5/lib/Qt5Gui.prl \
		/mnt/WesternDigital/mxe/usr/i686-w64-mingw32.static/qt5/plugins/platforms/qwindows.prl \
		/mnt/WesternDigital/mxe/usr/i686-w64-mingw32.static/qt5/lib/Qt5PlatformSupport.prl \
		/mnt/WesternDigital/mxe/usr/i686-w64-mingw32.static/qt5/plugins/imageformats/qdds.prl \
		/mnt/WesternDigital/mxe/usr/i686-w64-mingw32.static/qt5/plugins/imageformats/qicns.prl \
		/mnt/WesternDigital/mxe/usr/i686-w64-mingw32.static/qt5/plugins/imageformats/qico.prl \
		/mnt/WesternDigital/mxe/usr/i686-w64-mingw32.static/qt5/plugins/imageformats/qjp2.prl \
		/mnt/WesternDigital/mxe/usr/i686-w64-mingw32.static/qt5/plugins/imageformats/qmng.prl \
		/mnt/WesternDigital/mxe/usr/i686-w64-mingw32.static/qt5/plugins/imageformats/qtga.prl \
		/mnt/WesternDigital/mxe/usr/i686-w64-mingw32.static/qt5/plugins/imageformats/qtiff.prl \
		/mnt/WesternDigital/mxe/usr/i686-w64-mingw32.static/qt5/plugins/imageformats/qwbmp.prl \
		/mnt/WesternDigital/mxe/usr/i686-w64-mingw32.static/qt5/plugins/imageformats/qwebp.prl
	$(QMAKE) -o Makefile PathFinding.pro
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/spec_pre.prf:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/qdevice.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/device_config.prf:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/common/shell-unix.conf:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/qconfig.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_3d.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_3d_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_3dquick.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_3dquick_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_axbase.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_axbase_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_axcontainer.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_axcontainer_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_axserver.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_axserver_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_bluetooth.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_bluetooth_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_clucene_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_concurrent.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_concurrent_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_core.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_core_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_dbus.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_dbus_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_declarative.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_declarative_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_enginio.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_enginio_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_gui.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_gui_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_help.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_help_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_location.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_location_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_multimedia.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_multimedia_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_multimediawidgets.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_multimediawidgets_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_network.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_network_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_nfc.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_nfc_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_opengl.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_opengl_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_openglextensions.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_platformsupport_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_positioning.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_positioning_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_printsupport.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_printsupport_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_publishsubscribe.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_publishsubscribe_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_qml.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_qml_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_qmldevtools_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_qmltest.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_qmltest_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_quick.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_quick_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_quickparticles_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_quickwidgets.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_quickwidgets_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_script.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_script_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_scripttools.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_scripttools_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_sensors.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_sensors_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_serialport.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_serialport_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_serviceframework.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_serviceframework_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_sql.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_sql_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_svg.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_svg_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_systeminfo.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_systeminfo_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_testlib.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_testlib_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_uitools.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_uitools_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_webchannel.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_webchannel_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_websockets.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_websockets_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_widgets.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_widgets_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_winextras.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_winextras_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_xml.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_xml_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_xmlpatterns.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_lib_xmlpatterns_private.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_dsengine.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qdds.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qgenericbearer.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qicns.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qico.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qjp2.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qminimal.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qmldbg_inspector.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qmldbg_qtquick2.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qmldbg_tcp.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qmldbg_tcp_qtdeclarative.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qmng.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qnativewifibearer.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qsqlite.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qsqlodbc.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qsqlpsql.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qsqltds.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qsvg.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qsvgicon.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtaudio_windows.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtga.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtgeoservices_nokia.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtgeoservices_osm.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtiff.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtmedia_audioengine.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtmultimedia_m3u.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtposition_positionpoll.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtsensorgestures_plugin.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtsensorgestures_shakeplugin.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtsensors_dummy.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtsensors_generic.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qwbmp.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qwebp.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_qwindows.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/modules/qt_plugin_windowsprintersupport.pri:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/qt_functions.prf:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/qt_config.prf:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/win32/qt_config.prf:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/win32-g++/qmake.conf:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/spec_post.prf:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/exclusive_builds.prf:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/default_pre.prf:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/win32/default_pre.prf:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/resolve_config.prf:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/exclusive_builds_post.prf:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/default_post.prf:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/win32/rtti.prf:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/precompile_header.prf:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/warn_on.prf:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/qt.prf:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/resources.prf:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/moc.prf:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/win32/opengl.prf:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/uic.prf:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/win32/windows.prf:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/testcase_targets.prf:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/exceptions.prf:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/yacc.prf:
../../../../mxe/usr/i686-w64-mingw32.static/qt5/mkspecs/features/lex.prf:
PathFinding.pro:
/mnt/WesternDigital/mxe/usr/i686-w64-mingw32.static/qt5/lib/qtmain.prl:
/mnt/WesternDigital/mxe/usr/i686-w64-mingw32.static/qt5/lib/Qt5Core.prl:
/mnt/WesternDigital/mxe/usr/i686-w64-mingw32.static/qt5/lib/Qt5Widgets.prl:
/mnt/WesternDigital/mxe/usr/i686-w64-mingw32.static/qt5/lib/Qt5Gui.prl:
/mnt/WesternDigital/mxe/usr/i686-w64-mingw32.static/qt5/plugins/platforms/qwindows.prl:
/mnt/WesternDigital/mxe/usr/i686-w64-mingw32.static/qt5/lib/Qt5PlatformSupport.prl:
/mnt/WesternDigital/mxe/usr/i686-w64-mingw32.static/qt5/plugins/imageformats/qdds.prl:
/mnt/WesternDigital/mxe/usr/i686-w64-mingw32.static/qt5/plugins/imageformats/qicns.prl:
/mnt/WesternDigital/mxe/usr/i686-w64-mingw32.static/qt5/plugins/imageformats/qico.prl:
/mnt/WesternDigital/mxe/usr/i686-w64-mingw32.static/qt5/plugins/imageformats/qjp2.prl:
/mnt/WesternDigital/mxe/usr/i686-w64-mingw32.static/qt5/plugins/imageformats/qmng.prl:
/mnt/WesternDigital/mxe/usr/i686-w64-mingw32.static/qt5/plugins/imageformats/qtga.prl:
/mnt/WesternDigital/mxe/usr/i686-w64-mingw32.static/qt5/plugins/imageformats/qtiff.prl:
/mnt/WesternDigital/mxe/usr/i686-w64-mingw32.static/qt5/plugins/imageformats/qwbmp.prl:
/mnt/WesternDigital/mxe/usr/i686-w64-mingw32.static/qt5/plugins/imageformats/qwebp.prl:
qmake: FORCE
	@$(QMAKE) -o Makefile PathFinding.pro

qmake_all: FORCE

make_first: release-make_first debug-make_first FORCE
all: release-all debug-all FORCE
clean: release-clean debug-clean FORCE
distclean: release-distclean debug-distclean FORCE
	-$(DEL_FILE) Makefile
	-$(DEL_FILE) "/mnt/WesternDigital/Work/3rd year Swansea Metropolitan/PathFinding/PathFinding/pathfinding_plugin_import.cpp"

release-mocclean:
	$(MAKE) -f $(MAKEFILE).Release mocclean
debug-mocclean:
	$(MAKE) -f $(MAKEFILE).Debug mocclean
mocclean: release-mocclean debug-mocclean

release-mocables:
	$(MAKE) -f $(MAKEFILE).Release mocables
debug-mocables:
	$(MAKE) -f $(MAKEFILE).Debug mocables
mocables: release-mocables debug-mocables

check: first
FORCE:

$(MAKEFILE).Release: Makefile
$(MAKEFILE).Debug: Makefile