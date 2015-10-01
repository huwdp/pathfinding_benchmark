#-------------------------------------------------
#
# Project created by QtCreator 2014-10-03T17:33:12
#
#-------------------------------------------------

QT       += core gui
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

#QMAKE_CXXFLAGS += -fopenmp
#QMAKE_CXXFLAGS += -lgomp
#LIBS += -fopenmp
QMAKE_CXXFLAGS += -std=c++11

TARGET = PathFinding
CONFIG   -= console
CONFIG   -= app_bundle

TEMPLATE = app


SOURCES += main.cpp \
    lib/astar.cpp \
    lib/dijkstra.cpp \
    lib/node.cpp \
    test/reader.cpp \
    lib/connector.cpp \
    gui/mainwindow.cpp \
    test/test.cpp \
    test/results.cpp \
    gui/graphscene.cpp \
    lib/gbfs.cpp

HEADERS += \
    lib/astar.h \
    lib/config.h \
    lib/includes.h \
    lib/node.h \
    test/reader.h \
    lib/connector.h \
    gui/mainwindow.h \
    test/test.h \
    test/results.h \
    lib/pathfinder.h \
    lib/dijkstra.h \
    gui/graphscene.h \
    lib/rbfs.h \
    lib/gbfs.h

OTHER_FILES += \
    TODO.txt

FORMS += \
    gui/mainwindow.ui
