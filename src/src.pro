QT += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = deepin-camera
TEMPLATE = app
CONFIG += c++11 link_pkgconfig
QT += dtkwidget dtkgui
#PKGCONFIG += dframeworkdbus
# The following define makes your compiler warn you if you use any
# feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES +=QT_DEPRECATED_WARNINGS

QMAKE_CFLAGS_ISYSTEM = -I

SOURCES += \
    src/main.cpp \
    src/mainwindow.cpp \
    src/toolbar.cpp \
    src/videowidget.cpp \
    src/widgetproxy.cpp \
    src/cameradetect.cpp \
    src/avcodec.cpp \
    src/effectproxy.cpp \
    src/thumbnailsbar.cpp \
    src/majorimageprocessingthread.cpp \
    src/LPF_V4L2.c \
    src/devnummonitor.cpp \
    src/closedialog.cpp

RESOURCES += \
    resource/resources.qrc

HEADERS += \
    src/mainwindow.h \
    src/toolbar.h \
    src/widgetproxy.h \
    src/cameradetect.h \
    src/avcodec.h \
    src/effectproxy.h \
    src/thumbnailsbar.h \
    src/majorimageprocessingthread.h \
    src/LPF_V4L2.h \
    libcheese_v4l2core/gview_v4l2core \
    src/v4l2_core.h \
    src/videowidget.h \
    src/devnummonitor.h \
    src/closedialog.h


INCLUDEPATH += ../libcam/libcam_v4l2core\
                ../libcam/libcam_render\
                ../libcam/libcam_encoder \
                ../libcam/libcam_audio \
                ../libcam/libcam
                /usr/include


LIBS += -L./libs \
        -ldepcam

LIBS += -L/lib/x86_64-linux-gnu\
        -lv4l2\
        -ludev\
        -lusb-1.0\
        -lavcodec\
        -lavutil\
        -lavformat\
        -lswscale\
        -lpng\
        -lz\
        -lSDL2\
        -lportaudio\
         -lasound

DESTDIR = ./app

#ClEAR_OBJ_CHEESE = rm -rf ./*.o
#QMAKE_POST_LINK += $$quote($$ClEAR_OBJ_CHEESE)

#ClEAR_LIB_OBJ = rm -f ./*.o \
#            ../libcam/*.o \
#            ../libcam/libcam_v4l2core/*.o \
#            ../libcam/libcam_render/*.o \
#            ../libcam/libcam_encoder/*.o \
#            ../libcam/libcam_audio/*.o
#QMAKE_POST_LINK += $$quote($$ClEAR_LIB_OBJ)


