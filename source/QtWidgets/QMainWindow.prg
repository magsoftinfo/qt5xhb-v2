/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QMENU
REQUEST QMENUBAR
REQUEST QSIZE
REQUEST QSTATUSBAR
REQUEST QTOOLBAR
REQUEST QWIDGET
#endif

CLASS QMainWindow INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD addDockWidget
   METHOD addToolBar
   METHOD addToolBarBreak
   METHOD centralWidget
   METHOD corner
   METHOD createPopupMenu
   METHOD dockOptions
   METHOD dockWidgetArea
   METHOD documentMode
   METHOD iconSize
   METHOD insertToolBar
   METHOD insertToolBarBreak
   METHOD isAnimated
   METHOD isDockNestingEnabled
   METHOD menuBar
   METHOD menuWidget
   METHOD removeDockWidget
   METHOD removeToolBar
   METHOD removeToolBarBreak
   METHOD restoreDockWidget
   METHOD restoreState
   METHOD saveState
   METHOD setCentralWidget
   METHOD setCorner
   METHOD setDockOptions
   METHOD setDocumentMode
   METHOD setIconSize
   METHOD setMenuBar
   METHOD setMenuWidget
   METHOD setStatusBar
   METHOD setTabPosition
   METHOD setTabShape
   METHOD setToolButtonStyle
   METHOD splitDockWidget
   METHOD statusBar
   METHOD tabPosition
   METHOD tabShape
   METHOD tabifyDockWidget
   METHOD toolBarArea
   METHOD toolBarBreak
   METHOD toolButtonStyle
   METHOD setAnimated
   METHOD setDockNestingEnabled
   METHOD takeCentralWidget

   METHOD onIconSizeChanged
   METHOD onToolButtonStyleChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMainWindow
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QMainWindow>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QMainWindow>
#endif

#include <QtWidgets/QMenu>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QToolBar>

/*
QMainWindow( QWidget * parent = nullptr, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QMAINWINDOW_NEW )
{
  if( ISBETWEEN(0, 2) && ( ISQWIDGET(1) || HB_ISNIL(1) ) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
  {
    auto obj = new QMainWindow( OPQWIDGET( 1, nullptr ), HB_ISNIL(2) ? static_cast<Qt::WindowFlags >( 0 ) : static_cast<Qt::WindowFlags >( hb_parni(2) ) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QMAINWINDOW_DELETE )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = nullptr;
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QMAINWINDOW_ADDDOCKWIDGET )
{
  if( ISNUMPAR(2) && HB_ISNUM(1) && ISQDOCKWIDGET(2) )
  {
    /*
    void addDockWidget( Qt::DockWidgetArea area, QDockWidget * dockwidget )
    */
    auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      obj->addDockWidget( static_cast<Qt::DockWidgetArea>( hb_parni(1) ), PQDOCKWIDGET(2) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if( ISNUMPAR(3) && HB_ISNUM(1) && ISQDOCKWIDGET(2) && HB_ISNUM(3) )
  {
    /*
    void addDockWidget( Qt::DockWidgetArea area, QDockWidget * dockwidget, Qt::Orientation orientation )
    */
    auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      obj->addDockWidget( static_cast<Qt::DockWidgetArea>( hb_parni(1) ), PQDOCKWIDGET(2), static_cast<Qt::Orientation>( hb_parni(3) ) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QMAINWINDOW_ADDTOOLBAR )
{
  if( ISNUMPAR(2) && HB_ISNUM(1) && ISQTOOLBAR(2) )
  {
    /*
    void addToolBar( Qt::ToolBarArea area, QToolBar * toolbar )
    */
    auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      obj->addToolBar( static_cast<Qt::ToolBarArea>( hb_parni(1) ), PQTOOLBAR(2) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if( ISNUMPAR(1) && ISQTOOLBAR(1) )
  {
    /*
    void addToolBar( QToolBar * toolbar )
    */
    auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      obj->addToolBar( PQTOOLBAR(1) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QToolBar * addToolBar( const QString & title )
    */
    auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      QToolBar * ptr = obj->addToolBar( PQSTRING(1) );
      Qt5xHb::createReturnQWidgetClass( ptr, "QTOOLBAR");
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void addToolBarBreak( Qt::ToolBarArea area = Qt::TopToolBarArea )
*/
HB_FUNC_STATIC( QMAINWINDOW_ADDTOOLBARBREAK )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && ( HB_ISNUM(1) || HB_ISNIL(1) ) )
    {
#endif
      obj->addToolBarBreak( HB_ISNIL(1) ? static_cast<Qt::ToolBarArea >( Qt::TopToolBarArea ) : static_cast<Qt::ToolBarArea >( hb_parni(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QWidget * centralWidget() const
*/
HB_FUNC_STATIC( QMAINWINDOW_CENTRALWIDGET )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWidget * ptr = obj->centralWidget();
      Qt5xHb::createReturnQWidgetClass( ptr, "QWIDGET");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
Qt::DockWidgetArea corner( Qt::Corner corner ) const
*/
HB_FUNC_STATIC( QMAINWINDOW_CORNER )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RENUM( obj->corner( static_cast<Qt::Corner>( hb_parni(1) ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual QMenu * createPopupMenu()
*/
HB_FUNC_STATIC( QMAINWINDOW_CREATEPOPUPMENU )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMenu * ptr = obj->createPopupMenu();
      Qt5xHb::createReturnQWidgetClass( ptr, "QMENU");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QMainWindow::DockOptions dockOptions() const
*/
HB_FUNC_STATIC( QMAINWINDOW_DOCKOPTIONS )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->dockOptions() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
Qt::DockWidgetArea dockWidgetArea( QDockWidget * dockwidget ) const
*/
HB_FUNC_STATIC( QMAINWINDOW_DOCKWIDGETAREA )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDOCKWIDGET(1) )
    {
#endif
      RENUM( obj->dockWidgetArea( PQDOCKWIDGET(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool documentMode() const
*/
HB_FUNC_STATIC( QMAINWINDOW_DOCUMENTMODE )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->documentMode() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QSize iconSize() const
*/
HB_FUNC_STATIC( QMAINWINDOW_ICONSIZE )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QSize( obj->iconSize() );
      Qt5xHb::createReturnClass(ptr, "QSIZE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void insertToolBar( QToolBar * before, QToolBar * toolbar )
*/
HB_FUNC_STATIC( QMAINWINDOW_INSERTTOOLBAR )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQTOOLBAR(1) && ISQTOOLBAR(2) )
    {
#endif
      obj->insertToolBar( PQTOOLBAR(1), PQTOOLBAR(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void insertToolBarBreak( QToolBar * before )
*/
HB_FUNC_STATIC( QMAINWINDOW_INSERTTOOLBARBREAK )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTOOLBAR(1) )
    {
#endif
      obj->insertToolBarBreak( PQTOOLBAR(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool isAnimated() const
*/
HB_FUNC_STATIC( QMAINWINDOW_ISANIMATED )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isAnimated() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isDockNestingEnabled() const
*/
HB_FUNC_STATIC( QMAINWINDOW_ISDOCKNESTINGENABLED )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isDockNestingEnabled() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QMenuBar * menuBar() const
*/
HB_FUNC_STATIC( QMAINWINDOW_MENUBAR )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMenuBar * ptr = obj->menuBar();
      Qt5xHb::createReturnQWidgetClass( ptr, "QMENUBAR");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QWidget * menuWidget() const
*/
HB_FUNC_STATIC( QMAINWINDOW_MENUWIDGET )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWidget * ptr = obj->menuWidget();
      Qt5xHb::createReturnQWidgetClass( ptr, "QWIDGET");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void removeDockWidget( QDockWidget * dockwidget )
*/
HB_FUNC_STATIC( QMAINWINDOW_REMOVEDOCKWIDGET )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDOCKWIDGET(1) )
    {
#endif
      obj->removeDockWidget( PQDOCKWIDGET(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void removeToolBar( QToolBar * toolbar )
*/
HB_FUNC_STATIC( QMAINWINDOW_REMOVETOOLBAR )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTOOLBAR(1) )
    {
#endif
      obj->removeToolBar( PQTOOLBAR(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void removeToolBarBreak( QToolBar * before )
*/
HB_FUNC_STATIC( QMAINWINDOW_REMOVETOOLBARBREAK )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTOOLBAR(1) )
    {
#endif
      obj->removeToolBarBreak( PQTOOLBAR(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool restoreDockWidget( QDockWidget * dockwidget )
*/
HB_FUNC_STATIC( QMAINWINDOW_RESTOREDOCKWIDGET )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDOCKWIDGET(1) )
    {
#endif
      RBOOL( obj->restoreDockWidget( PQDOCKWIDGET(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool restoreState( const QByteArray & state, int version = 0 )
*/
HB_FUNC_STATIC( QMAINWINDOW_RESTORESTATE )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && ISQBYTEARRAY(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
    {
#endif
      RBOOL( obj->restoreState( *PQBYTEARRAY(1), OPINT( 2, 0 ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QByteArray saveState( int version = 0 ) const
*/
HB_FUNC_STATIC( QMAINWINDOW_SAVESTATE )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && ( HB_ISNUM(1) || HB_ISNIL(1) ) )
    {
#endif
      auto ptr = new QByteArray( obj->saveState( OPINT( 1, 0 ) ) );
      Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setCentralWidget( QWidget * widget )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETCENTRALWIDGET )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
#endif
      obj->setCentralWidget( PQWIDGET(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setCorner( Qt::Corner corner, Qt::DockWidgetArea area )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETCORNER )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->setCorner( static_cast<Qt::Corner>( hb_parni(1) ), static_cast<Qt::DockWidgetArea>( hb_parni(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setDockOptions( QMainWindow::DockOptions options )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETDOCKOPTIONS )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setDockOptions( static_cast<QMainWindow::DockOptions>( hb_parni(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setDocumentMode( bool enabled )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETDOCUMENTMODE )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setDocumentMode( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setIconSize( const QSize & iconSize )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETICONSIZE )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
#endif
      obj->setIconSize( *PQSIZE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setMenuBar( QMenuBar * menuBar )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETMENUBAR )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMENUBAR(1) )
    {
#endif
      obj->setMenuBar( PQMENUBAR(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setMenuWidget( QWidget * menuBar )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETMENUWIDGET )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
#endif
      obj->setMenuWidget( PQWIDGET(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setStatusBar( QStatusBar * statusbar )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETSTATUSBAR )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSTATUSBAR(1) )
    {
#endif
      obj->setStatusBar( PQSTATUSBAR(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setTabPosition( Qt::DockWidgetAreas areas, QTabWidget::TabPosition tabPosition )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETTABPOSITION )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->setTabPosition( static_cast<Qt::DockWidgetAreas>( hb_parni(1) ), static_cast<QTabWidget::TabPosition>( hb_parni(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setTabShape( QTabWidget::TabShape tabShape )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETTABSHAPE )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setTabShape( static_cast<QTabWidget::TabShape>( hb_parni(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setToolButtonStyle( Qt::ToolButtonStyle toolButtonStyle )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETTOOLBUTTONSTYLE )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setToolButtonStyle( static_cast<Qt::ToolButtonStyle>( hb_parni(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void splitDockWidget( QDockWidget * first, QDockWidget * second, Qt::Orientation orientation )
*/
HB_FUNC_STATIC( QMAINWINDOW_SPLITDOCKWIDGET )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQDOCKWIDGET(1) && ISQDOCKWIDGET(2) && HB_ISNUM(3) )
    {
#endif
      obj->splitDockWidget( PQDOCKWIDGET(1), PQDOCKWIDGET(2), static_cast<Qt::Orientation>( hb_parni(3) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QStatusBar * statusBar() const
*/
HB_FUNC_STATIC( QMAINWINDOW_STATUSBAR )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QStatusBar * ptr = obj->statusBar();
      Qt5xHb::createReturnQWidgetClass( ptr, "QSTATUSBAR");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QTabWidget::TabPosition tabPosition( Qt::DockWidgetArea area ) const
*/
HB_FUNC_STATIC( QMAINWINDOW_TABPOSITION )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RENUM( obj->tabPosition( static_cast<Qt::DockWidgetArea>( hb_parni(1) ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QTabWidget::TabShape tabShape() const
*/
HB_FUNC_STATIC( QMAINWINDOW_TABSHAPE )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->tabShape() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void tabifyDockWidget( QDockWidget * first, QDockWidget * second )
*/
HB_FUNC_STATIC( QMAINWINDOW_TABIFYDOCKWIDGET )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQDOCKWIDGET(1) && ISQDOCKWIDGET(2) )
    {
#endif
      obj->tabifyDockWidget( PQDOCKWIDGET(1), PQDOCKWIDGET(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
Qt::ToolBarArea toolBarArea( QToolBar * toolbar ) const
*/
HB_FUNC_STATIC( QMAINWINDOW_TOOLBARAREA )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTOOLBAR(1) )
    {
#endif
      RENUM( obj->toolBarArea( PQTOOLBAR(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool toolBarBreak( QToolBar * toolbar ) const
*/
HB_FUNC_STATIC( QMAINWINDOW_TOOLBARBREAK )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTOOLBAR(1) )
    {
#endif
      RBOOL( obj->toolBarBreak( PQTOOLBAR(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
Qt::ToolButtonStyle toolButtonStyle() const
*/
HB_FUNC_STATIC( QMAINWINDOW_TOOLBUTTONSTYLE )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->toolButtonStyle() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setAnimated( bool enabled )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETANIMATED )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setAnimated( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setDockNestingEnabled( bool enabled ) const
*/
HB_FUNC_STATIC( QMAINWINDOW_SETDOCKNESTINGENABLED )
{
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setDockNestingEnabled( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QWidget * takeCentralWidget()
*/
HB_FUNC_STATIC( QMAINWINDOW_TAKECENTRALWIDGET )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWidget * ptr = obj->takeCentralWidget();
      Qt5xHb::createReturnQWidgetClass( ptr, "QWIDGET");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void iconSizeChanged( const QSize & iconSize )
*/
HB_FUNC_STATIC( QMAINWINDOW_ONICONSIZECHANGED )
{
  auto sender = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("iconSizeChanged(QSize)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QMainWindow::iconSizeChanged,
                                                              [sender, indexOfCodeBlock]
                                                              (const QSize & arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QMAINWINDOW");
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_object( (void *) &arg1, "QSIZE");
            hb_vmEvalBlockV(cb, 2, pSender, pArg1);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
}

/*
void toolButtonStyleChanged( Qt::ToolButtonStyle toolButtonStyle )
*/
HB_FUNC_STATIC( QMAINWINDOW_ONTOOLBUTTONSTYLECHANGED )
{
  auto sender = qobject_cast<QMainWindow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("toolButtonStyleChanged(Qt::ToolButtonStyle)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QMainWindow::toolButtonStyleChanged,
                                                              [sender, indexOfCodeBlock]
                                                              (Qt::ToolButtonStyle arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QMAINWINDOW");
            PHB_ITEM pArg1 = hb_itemPutNI(nullptr, static_cast<int>(arg1));
            hb_vmEvalBlockV(cb, 2, pSender, pArg1);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
}

#pragma ENDDUMP
