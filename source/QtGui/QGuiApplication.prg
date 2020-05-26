/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACCESSIBLEEVENT
REQUEST QACCESSIBLESTATECHANGEEVENT
REQUEST QACCESSIBLETABLEMODELCHANGEEVENT
REQUEST QACCESSIBLETEXTCURSOREVENT
REQUEST QACCESSIBLETEXTINSERTEVENT
REQUEST QACCESSIBLETEXTREMOVEEVENT
REQUEST QACCESSIBLETEXTSELECTIONEVENT
REQUEST QACCESSIBLETEXTUPDATEEVENT
REQUEST QACCESSIBLEVALUECHANGEEVENT
REQUEST QACTIONEVENT
REQUEST QAPPLICATIONSTATECHANGEEVENT
REQUEST QCLIPBOARD
REQUEST QCLOSEEVENT
REQUEST QCONTEXTMENUEVENT
REQUEST QCURSOR
REQUEST QDRAGENTEREVENT
REQUEST QDRAGLEAVEEVENT
REQUEST QDRAGMOVEEVENT
REQUEST QDROPEVENT
REQUEST QENTEREVENT
REQUEST QEXPOSEEVENT
REQUEST QFILEOPENEVENT
REQUEST QFOCUSEVENT
REQUEST QFONT
REQUEST QHELPEVENT
REQUEST QHIDEEVENT
REQUEST QHOVEREVENT
REQUEST QICONDRAGEVENT
REQUEST QINPUTEVENT
REQUEST QINPUTMETHOD
REQUEST QINPUTMETHODEVENT
REQUEST QINPUTMETHODQUERYEVENT
REQUEST QKEYEVENT
REQUEST QMOUSEEVENT
REQUEST QMOVEEVENT
REQUEST QNATIVEGESTUREEVENT
REQUEST QOBJECT
REQUEST QPAINTEVENT
REQUEST QPALETTE
REQUEST QRESIZEEVENT
REQUEST QSCREEN
REQUEST QSCREENORIENTATIONCHANGEEVENT
REQUEST QSCROLLEVENT
REQUEST QSCROLLPREPAREEVENT
REQUEST QSHORTCUTEVENT
REQUEST QSHOWEVENT
REQUEST QSTATUSTIPEVENT
REQUEST QSTYLEHINTS
REQUEST QTABLETEVENT
REQUEST QTOOLBARCHANGEEVENT
REQUEST QTOUCHEVENT
REQUEST QWHATSTHISCLICKEDEVENT
REQUEST QWHEELEVENT
REQUEST QWINDOW
REQUEST QWINDOWSTATECHANGEEVENT
#endif

CLASS QGuiApplication INHERIT QCoreApplication

   METHOD new
   METHOD delete
   METHOD notify
   METHOD allWindows
   METHOD applicationDisplayName
   METHOD changeOverrideCursor
   METHOD clipboard
   METHOD desktopSettingsAware
   METHOD exec
   METHOD focusObject
   METHOD focusWindow
   METHOD font
   METHOD inputMethod
   METHOD isLeftToRight
   METHOD isRightToLeft
   METHOD keyboardModifiers
   METHOD layoutDirection
   METHOD modalWindow
   METHOD mouseButtons
   METHOD overrideCursor
   METHOD palette
   METHOD platformName
   METHOD primaryScreen
   METHOD queryKeyboardModifiers
   METHOD quitOnLastWindowClosed
   METHOD restoreOverrideCursor
   METHOD screens
   METHOD setApplicationDisplayName
   METHOD setDesktopSettingsAware
   METHOD setFont
   METHOD setLayoutDirection
   METHOD setOverrideCursor
   METHOD setPalette
   METHOD setQuitOnLastWindowClosed
   METHOD styleHints
   METHOD topLevelAt
   METHOD topLevelWindows

   METHOD onFocusObjectChanged
   METHOD onFocusWindowChanged
   METHOD onFontDatabaseChanged
   METHOD onLastWindowClosed
   METHOD onScreenAdded

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGuiApplication
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QGuiApplication>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtGui/QGuiApplication>
#endif

#include <QtGui/QClipboard>
#include <QtGui/QFont>
#include <QtGui/QPalette>
#include <QtGui/QScreen>
#include <QtGui/QStyleHints>
#include <QtGui/QWindow>

/*
QGuiApplication(int & argc, char ** argv)
*/
HB_FUNC_STATIC( QGUIAPPLICATION_NEW )
{
  int argc;
  char ** argv;
  argc = hb_cmdargARGC();
  argv = hb_cmdargARGV();
  auto obj = new QGuiApplication( argc, argv );
  Qt5xHb::returnNewObject( obj, false );
}

HB_FUNC_STATIC( QGUIAPPLICATION_DELETE )
{
  auto obj = (QGuiApplication *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, nullptr );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool notify(QObject * object, QEvent * event)
*/
HB_FUNC_STATIC( QGUIAPPLICATION_NOTIFY )
{
  auto obj = (QGuiApplication *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQOBJECT(1) && ISQEVENT(2) )
    {
#endif
      RBOOL( obj->notify( PQOBJECT(1), PQEVENT(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
static QWindowList allWindows()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_ALLWINDOWS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QWindowList list = QGuiApplication::allWindows();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QWINDOW" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    if( pDynSym )
    {
      for( auto i = 0; i < list.count(); i++ )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( nullptr );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( nullptr );
        hb_itemPutPtr( pItem, (QWindow *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    else
    {
      hb_errRT_BASE( EG_NOFUNC, 1001, nullptr, "QWINDOW", HB_ERR_ARGS_BASEPARAMS );
    }
    hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QString applicationDisplayName()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_APPLICATIONDISPLAYNAME )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RQSTRING( QGuiApplication::applicationDisplayName() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static void changeOverrideCursor(const QCursor & cursor)
*/
HB_FUNC_STATIC( QGUIAPPLICATION_CHANGEOVERRIDECURSOR )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQCURSOR(1) )
  {
#endif
    QGuiApplication::changeOverrideCursor( *PQCURSOR(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QClipboard * clipboard()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_CLIPBOARD )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QClipboard * ptr = QGuiApplication::clipboard();
    Qt5xHb::createReturnQObjectClass( ptr, "QCLIPBOARD" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static bool desktopSettingsAware()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_DESKTOPSETTINGSAWARE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RBOOL( QGuiApplication::desktopSettingsAware() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static int exec()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_EXEC )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RINT( QGuiApplication::exec() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QObject * focusObject()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_FOCUSOBJECT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QObject * ptr = QGuiApplication::focusObject();
    Qt5xHb::createReturnQObjectClass( ptr, "QOBJECT" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QWindow * focusWindow()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_FOCUSWINDOW )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QWindow * ptr = QGuiApplication::focusWindow();
    Qt5xHb::createReturnQObjectClass( ptr, "QWINDOW" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QFont font()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_FONT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    auto ptr = new QFont( QGuiApplication::font() );
    Qt5xHb::createReturnClass( ptr, "QFONT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QInputMethod * inputMethod()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_INPUTMETHOD )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QInputMethod * ptr = QGuiApplication::inputMethod();
    Qt5xHb::createReturnQObjectClass( ptr, "QINPUTMETHOD" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static bool isLeftToRight()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_ISLEFTTORIGHT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RBOOL( QGuiApplication::isLeftToRight() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static bool isRightToLeft()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_ISRIGHTTOLEFT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RBOOL( QGuiApplication::isRightToLeft() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static Qt::KeyboardModifiers keyboardModifiers()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_KEYBOARDMODIFIERS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RENUM( QGuiApplication::keyboardModifiers() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static Qt::LayoutDirection layoutDirection()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_LAYOUTDIRECTION )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RENUM( QGuiApplication::layoutDirection() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QWindow * modalWindow()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_MODALWINDOW )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QWindow * ptr = QGuiApplication::modalWindow();
    Qt5xHb::createReturnQObjectClass( ptr, "QWINDOW" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static Qt::MouseButtons mouseButtons()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_MOUSEBUTTONS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RENUM( QGuiApplication::mouseButtons() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QCursor * overrideCursor()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_OVERRIDECURSOR )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QCursor * ptr = QGuiApplication::overrideCursor();
    Qt5xHb::createReturnClass( ptr, "QCURSOR", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QPalette palette()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_PALETTE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    auto ptr = new QPalette( QGuiApplication::palette() );
    Qt5xHb::createReturnClass( ptr, "QPALETTE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QString platformName()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_PLATFORMNAME )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RQSTRING( QGuiApplication::platformName() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QPlatformNativeInterface * platformNativeInterface()
*/

/*
static QScreen * primaryScreen()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_PRIMARYSCREEN )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QScreen * ptr = QGuiApplication::primaryScreen();
    Qt5xHb::createReturnQObjectClass( ptr, "QSCREEN" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static Qt::KeyboardModifiers queryKeyboardModifiers()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_QUERYKEYBOARDMODIFIERS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RENUM( QGuiApplication::queryKeyboardModifiers() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static bool quitOnLastWindowClosed()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_QUITONLASTWINDOWCLOSED )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RBOOL( QGuiApplication::quitOnLastWindowClosed() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static void restoreOverrideCursor()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_RESTOREOVERRIDECURSOR )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QGuiApplication::restoreOverrideCursor();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QList<QScreen *> screens()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_SCREENS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QList<QScreen *> list = QGuiApplication::screens();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QSCREEN" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    if( pDynSym )
    {
      for( auto i = 0; i < list.count(); i++ )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( nullptr );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( nullptr );
        hb_itemPutPtr( pItem, (QScreen *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    else
    {
      hb_errRT_BASE( EG_NOFUNC, 1001, nullptr, "QSCREEN", HB_ERR_ARGS_BASEPARAMS );
    }
    hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static void setApplicationDisplayName(const QString & name)
*/
HB_FUNC_STATIC( QGUIAPPLICATION_SETAPPLICATIONDISPLAYNAME )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
#endif
    QGuiApplication::setApplicationDisplayName( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setDesktopSettingsAware(bool on)
*/
HB_FUNC_STATIC( QGUIAPPLICATION_SETDESKTOPSETTINGSAWARE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISLOG(1) )
  {
#endif
    QGuiApplication::setDesktopSettingsAware( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setFont(const QFont & font)
*/
HB_FUNC_STATIC( QGUIAPPLICATION_SETFONT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQFONT(1) )
  {
#endif
    QGuiApplication::setFont( *PQFONT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setLayoutDirection(Qt::LayoutDirection direction)
*/
HB_FUNC_STATIC( QGUIAPPLICATION_SETLAYOUTDIRECTION )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISNUM(1) )
  {
#endif
    QGuiApplication::setLayoutDirection( (Qt::LayoutDirection) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setOverrideCursor(const QCursor & cursor)
*/
HB_FUNC_STATIC( QGUIAPPLICATION_SETOVERRIDECURSOR )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQCURSOR(1) )
  {
#endif
    QGuiApplication::setOverrideCursor( *PQCURSOR(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setPalette(const QPalette & pal)
*/
HB_FUNC_STATIC( QGUIAPPLICATION_SETPALETTE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQPALETTE(1) )
  {
#endif
    QGuiApplication::setPalette( *PQPALETTE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setQuitOnLastWindowClosed(bool quit)
*/
HB_FUNC_STATIC( QGUIAPPLICATION_SETQUITONLASTWINDOWCLOSED )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISLOG(1) )
  {
#endif
    QGuiApplication::setQuitOnLastWindowClosed( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QStyleHints * styleHints()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_STYLEHINTS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QStyleHints * ptr = QGuiApplication::styleHints();
    Qt5xHb::createReturnQObjectClass( ptr, "QSTYLEHINTS" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QWindow * topLevelAt(const QPoint & pos)
*/
HB_FUNC_STATIC( QGUIAPPLICATION_TOPLEVELAT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
#endif
    QWindow * ptr = QGuiApplication::topLevelAt( *PQPOINT(1) );
    Qt5xHb::createReturnQObjectClass( ptr, "QWINDOW" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QWindowList topLevelWindows()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_TOPLEVELWINDOWS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QWindowList list = QGuiApplication::topLevelWindows();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QWINDOW" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    if( pDynSym )
    {
      for( auto i = 0; i < list.count(); i++ )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( nullptr );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( nullptr );
        hb_itemPutPtr( pItem, (QWindow *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    else
    {
      hb_errRT_BASE( EG_NOFUNC, 1001, nullptr, "QWINDOW", HB_ERR_ARGS_BASEPARAMS );
    }
    hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
void focusObjectChanged( QObject * focusObject )
*/
HB_FUNC_STATIC( QGUIAPPLICATION_ONFOCUSOBJECTCHANGED )
{
  auto sender = (QGuiApplication *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("focusObjectChanged(QObject*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QGuiApplication::focusObjectChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (QObject * arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QGUIAPPLICATION" );
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_qobject( (QObject *) arg1, "QOBJECT" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void focusWindowChanged( QWindow * focusWindow )
*/
HB_FUNC_STATIC( QGUIAPPLICATION_ONFOCUSWINDOWCHANGED )
{
  auto sender = (QGuiApplication *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("focusWindowChanged(QWindow*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QGuiApplication::focusWindowChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (QWindow * arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QGUIAPPLICATION" );
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_qobject( (QObject *) arg1, "QWINDOW" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void fontDatabaseChanged()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_ONFONTDATABASECHANGED )
{
  auto sender = (QGuiApplication *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("fontDatabaseChanged()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QGuiApplication::fontDatabaseChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QGUIAPPLICATION" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void lastWindowClosed()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_ONLASTWINDOWCLOSED )
{
  auto sender = (QGuiApplication *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("lastWindowClosed()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QGuiApplication::lastWindowClosed, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QGUIAPPLICATION" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void screenAdded( QScreen * screen )
*/
HB_FUNC_STATIC( QGUIAPPLICATION_ONSCREENADDED )
{
  auto sender = (QGuiApplication *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("screenAdded(QScreen*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QGuiApplication::screenAdded, 
                                                              [sender, indexOfCodeBlock]
                                                              (QScreen * arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QGUIAPPLICATION" );
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_qobject( (QObject *) arg1, "QSCREEN" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

#pragma ENDDUMP
