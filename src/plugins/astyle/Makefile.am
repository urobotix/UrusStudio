SUBDIRS = resources

AM_CPPFLAGS = $(WX_CXXFLAGS) \
           -I$(top_srcdir)/src/include \
           -I$(top_srcdir)/src/sdk/wxscintilla/include

pluginlibdir = $(pkglibdir)/plugins

pluginlib_LTLIBRARIES = libAstyle.la

libAstyle_la_LDFLAGS = @MODULE_SHARED_LDFLAGS@ -version-info 0:1:0 -no-undefined -avoid-version

libAstyle_la_LIBADD = ../../sdk/libcodeblocks.la $(WX_LIBS)

libAstyle_la_SOURCES = asstreamiterator.cpp \
                       astyleconfigdlg.cpp \
                       astyleplugin.cpp \
                       dlgformattersettings.cpp \
                       formattersettings.cpp

noinst_HEADERS = asstreamiterator.h \
                 astyleconfigdlg.h \
                 astyleplugin.h \
                 astylepredefinedstyles.h \
                 dlgformattersettings.h \
                 formattersettings.h

EXTRA_DIST = astyle/ASLocalizer.cpp \
             astyle/ASLocalizer.h \
             astyle/astyle.html \
             astyle/astyle_main.cpp \
             astyle/astyle_main.h \
             astyle/index.html \
             astyle/install.html \
             astyle/license.html \
             astyle/links.html \
             astyle/news.html \
             astyle/notes.html \
             astyle/scripts.html \
             astyle/styles.css \
             astyle/subversion.html \
             astyle/vsinstall.html

if HAVE_ASTYLE
libAstyle_la_LIBADD += -lastyle
EXTRA_DIST += astyle/ASBeautifier.cpp \
		astyle/ASEnhancer.cpp \
		astyle/ASFormatter.cpp \
		astyle/ASResource.cpp \
                astyle/astyle.h
else
AM_CPPFLAGS += -I$(top_srcdir)/src/plugins/astyle/astyle
libAstyle_la_SOURCES += astyle/ASBeautifier.cpp \
                       astyle/ASEnhancer.cpp \
                       astyle/ASFormatter.cpp \
                       astyle/ASResource.cpp
noinst_HEADERS += astyle/astyle.h
endif
