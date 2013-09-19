QT       += core network xml

QT       -= gui

TARGET = testConsole
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app

SOURCES += main.cpp \
    qexample.cpp

win32:CONFIG(release, debug|release) {
    # WINDOWS RELEASE
    INCLUDEPATH += $$OUT_PWD/../qwebdavlib/
    LIBS += -L$$OUT_PWD/../lib/ -lqwebdav
} else:win32:CONFIG(debug, debug|release) {
    # WINDOWS DEBUG
    TARGET = $$join(TARGET,,,d)
    INCLUDEPATH += $$OUT_PWD/../qwebdavlib/
    LIBS += -L$$OUT_PWD/../lib/ -lqwebdavd
}

HEADERS += \
    qexample.h
