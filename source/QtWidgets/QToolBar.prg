/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QSIZE
REQUEST QWIDGET
#endif

CLASS QToolBar INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD actionAt
   METHOD addAction
   METHOD addSeparator
   METHOD addWidget
   METHOD allowedAreas
   METHOD clear
   METHOD iconSize
   METHOD insertSeparator
   METHOD insertWidget
   METHOD isAreaAllowed
   METHOD isFloatable
   METHOD isFloating
   METHOD isMovable
   METHOD orientation
   METHOD setAllowedAreas
   METHOD setFloatable
   METHOD setMovable
   METHOD setOrientation
   METHOD toggleViewAction
   METHOD toolButtonStyle
   METHOD widgetForAction
   METHOD setIconSize
   METHOD setToolButtonStyle

   METHOD onActionTriggered
   METHOD onAllowedAreasChanged
   METHOD onIconSizeChanged
   METHOD onMovableChanged
   METHOD onOrientationChanged
   METHOD onToolButtonStyleChanged
   METHOD onTopLevelChanged
   METHOD onVisibilityChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QToolBar
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QToolBar>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QToolBar>
#endif

#include <QtGui/QIcon>
#include <QtWidgets/QAction>

HB_FUNC_STATIC( QTOOLBAR_NEW )
{
  if( ISBETWEEN(1, 2) && HB_ISCHAR(1) && ( ISQWIDGET(2) || HB_ISNIL(2) ) )
  {
    /*
    QToolBar( const QString & title, QWidget * parent = nullptr )
    */
    auto obj = new QToolBar( PQSTRING(1), OPQWIDGET( 2, nullptr ) );
    Qt5xHb::returnNewObject(obj, false);

  }
  else if( ISBETWEEN(0, 1) && ( ISQWIDGET(1) || HB_ISNIL(1) ) )
  {
    /*
    QToolBar( QWidget * parent = nullptr )
    */
    auto obj = new QToolBar( OPQWIDGET( 1, nullptr ) );
    Qt5xHb::returnNewObject(obj, false);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QTOOLBAR_DELETE )
{
  auto obj = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = nullptr;
    auto ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QTOOLBAR_ACTIONAT )
{
  if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    /*
    QAction * actionAt( int x, int y ) const
    */
    auto obj = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      QAction * ptr = obj->actionAt( PINT(1), PINT(2) );
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
    }

  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    /*
    QAction * actionAt( const QPoint & p ) const
    */
    auto obj = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      QAction * ptr = obj->actionAt( *PQPOINT(1) );
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QTOOLBAR_ADDACTION )
{
  if( ISNUMPAR(1) && ISQACTION(1) )
  {
    /*
    void addAction( QAction * action )
    */
    auto obj = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      obj->addAction( PQACTION(1) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QAction * addAction( const QString & text )
    */
    auto obj = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      QAction * ptr = obj->addAction( PQSTRING(1) );
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
    }

  }
  else if( ISNUMPAR(2) && ( ISQICON(1)|| HB_ISCHAR(1) ) && HB_ISCHAR(2) )
  {
    /*
    QAction * addAction( const QIcon & icon, const QString & text )
    */
    auto obj = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      QAction * ptr = obj->addAction( HB_ISOBJECT(1) ? *static_cast<QIcon*>(Qt5xHb::itemGetPtr(1)) : QIcon( hb_parc(1) ), PQSTRING(2) );
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
    }

  }
  else if( ISNUMPAR(3) && HB_ISCHAR(1) && ISQOBJECT(2) && HB_ISCHAR(3) )
  {
    /*
    QAction * addAction( const QString & text, const QObject * receiver, const char * member )
    */
    auto obj = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      QAction * ptr = obj->addAction( PQSTRING(1), PQOBJECT(2), PCONSTCHAR(3) );
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
    }

  }
  else if( ISNUMPAR(4) && ( ISQICON(1)|| HB_ISCHAR(1) ) && HB_ISCHAR(2) && ISQOBJECT(3) && HB_ISCHAR(4) )
  {
    /*
    QAction * addAction( const QIcon & icon, const QString & text, const QObject * receiver, const char * member )
    */
    auto obj = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      QAction * ptr = obj->addAction( HB_ISOBJECT(1) ? *static_cast<QIcon*>(Qt5xHb::itemGetPtr(1)) : QIcon( hb_parc(1) ), PQSTRING(2), PQOBJECT(3), PCONSTCHAR(4) );
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QAction * addSeparator()
*/
HB_FUNC_STATIC( QTOOLBAR_ADDSEPARATOR )
{
  auto obj = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->addSeparator();
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
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
QAction * addWidget( QWidget * widget )
*/
HB_FUNC_STATIC( QTOOLBAR_ADDWIDGET )
{
  auto obj = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
#endif
      QAction * ptr = obj->addWidget( PQWIDGET(1) );
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
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
Qt::ToolBarAreas allowedAreas() const
*/
HB_FUNC_STATIC( QTOOLBAR_ALLOWEDAREAS )
{
  auto obj = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->allowedAreas() );
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
void clear()
*/
HB_FUNC_STATIC( QTOOLBAR_CLEAR )
{
  auto obj = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear();
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
QSize iconSize() const
*/
HB_FUNC_STATIC( QTOOLBAR_ICONSIZE )
{
  auto obj = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
QAction * insertSeparator( QAction * before )
*/
HB_FUNC_STATIC( QTOOLBAR_INSERTSEPARATOR )
{
  auto obj = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQACTION(1) )
    {
#endif
      QAction * ptr = obj->insertSeparator( PQACTION(1) );
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
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
QAction * insertWidget( QAction * before, QWidget * widget )
*/
HB_FUNC_STATIC( QTOOLBAR_INSERTWIDGET )
{
  auto obj = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQACTION(1) && ISQWIDGET(2) )
    {
#endif
      QAction * ptr = obj->insertWidget( PQACTION(1), PQWIDGET(2) );
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
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
bool isAreaAllowed( Qt::ToolBarArea area ) const
*/
HB_FUNC_STATIC( QTOOLBAR_ISAREAALLOWED )
{
  auto obj = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->isAreaAllowed( static_cast<Qt::ToolBarArea>( hb_parni(1) ) ) );
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
bool isFloatable() const
*/
HB_FUNC_STATIC( QTOOLBAR_ISFLOATABLE )
{
  auto obj = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isFloatable() );
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
bool isFloating() const
*/
HB_FUNC_STATIC( QTOOLBAR_ISFLOATING )
{
  auto obj = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isFloating() );
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
bool isMovable() const
*/
HB_FUNC_STATIC( QTOOLBAR_ISMOVABLE )
{
  auto obj = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isMovable() );
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
Qt::Orientation orientation() const
*/
HB_FUNC_STATIC( QTOOLBAR_ORIENTATION )
{
  auto obj = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->orientation() );
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
void setAllowedAreas( Qt::ToolBarAreas areas )
*/
HB_FUNC_STATIC( QTOOLBAR_SETALLOWEDAREAS )
{
  auto obj = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setAllowedAreas( static_cast<Qt::ToolBarAreas>( hb_parni(1) ) );
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
void setFloatable( bool floatable )
*/
HB_FUNC_STATIC( QTOOLBAR_SETFLOATABLE )
{
  auto obj = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setFloatable( PBOOL(1) );
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
void setMovable( bool movable )
*/
HB_FUNC_STATIC( QTOOLBAR_SETMOVABLE )
{
  auto obj = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setMovable( PBOOL(1) );
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
void setOrientation( Qt::Orientation orientation )
*/
HB_FUNC_STATIC( QTOOLBAR_SETORIENTATION )
{
  auto obj = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setOrientation( static_cast<Qt::Orientation>( hb_parni(1) ) );
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
QAction * toggleViewAction() const
*/
HB_FUNC_STATIC( QTOOLBAR_TOGGLEVIEWACTION )
{
  auto obj = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->toggleViewAction();
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
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
HB_FUNC_STATIC( QTOOLBAR_TOOLBUTTONSTYLE )
{
  auto obj = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
QWidget * widgetForAction( QAction * action ) const
*/
HB_FUNC_STATIC( QTOOLBAR_WIDGETFORACTION )
{
  auto obj = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQACTION(1) )
    {
#endif
      QWidget * ptr = obj->widgetForAction( PQACTION(1) );
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
void setIconSize( const QSize & iconSize )
*/
HB_FUNC_STATIC( QTOOLBAR_SETICONSIZE )
{
  auto obj = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
void setToolButtonStyle( Qt::ToolButtonStyle toolButtonStyle )
*/
HB_FUNC_STATIC( QTOOLBAR_SETTOOLBUTTONSTYLE )
{
  auto obj = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
void actionTriggered( QAction * action )
*/
HB_FUNC_STATIC( QTOOLBAR_ONACTIONTRIGGERED )
{
  auto sender = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());

  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("actionTriggered(QAction*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QToolBar::actionTriggered,
                                                              [sender, indexOfCodeBlock]
                                                              (QAction * arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QTOOLBAR");
            auto pArg1 = Qt5xHb::Signals_return_qobject(arg1, "QACTION");
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
void allowedAreasChanged( Qt::ToolBarAreas allowedAreas )
*/
HB_FUNC_STATIC( QTOOLBAR_ONALLOWEDAREASCHANGED )
{
  auto sender = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());
  
  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("allowedAreasChanged(Qt::ToolBarAreas)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QToolBar::allowedAreasChanged,
                                                              [sender, indexOfCodeBlock]
                                                              (Qt::ToolBarAreas arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QTOOLBAR");
            auto pArg1 = hb_itemPutNI(nullptr, static_cast<int>(arg1));
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
void iconSizeChanged( const QSize & iconSize )
*/
HB_FUNC_STATIC( QTOOLBAR_ONICONSIZECHANGED )
{
  auto sender = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());
  
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
                                                              &QToolBar::iconSizeChanged,
                                                              [sender, indexOfCodeBlock]
                                                              (const QSize & arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QTOOLBAR");
            auto pArg1 = Qt5xHb::Signals_return_object( (void *) &arg1, "QSIZE");
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
void movableChanged( bool movable )
*/
HB_FUNC_STATIC( QTOOLBAR_ONMOVABLECHANGED )
{
  auto sender = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());
  
  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("movableChanged(bool)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QToolBar::movableChanged,
                                                              [sender, indexOfCodeBlock]
                                                              (bool arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QTOOLBAR");
            auto pArg1 = hb_itemPutL(nullptr, arg1);
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
void orientationChanged( Qt::Orientation orientation )
*/
HB_FUNC_STATIC( QTOOLBAR_ONORIENTATIONCHANGED )
{
  auto sender = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());
  
  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("orientationChanged(Qt::Orientation)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QToolBar::orientationChanged,
                                                              [sender, indexOfCodeBlock]
                                                              (Qt::Orientation arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QTOOLBAR");
            auto pArg1 = hb_itemPutNI(nullptr, static_cast<int>(arg1));
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
HB_FUNC_STATIC( QTOOLBAR_ONTOOLBUTTONSTYLECHANGED )
{
  auto sender = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());
  
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
                                                              &QToolBar::toolButtonStyleChanged,
                                                              [sender, indexOfCodeBlock]
                                                              (Qt::ToolButtonStyle arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QTOOLBAR");
            auto pArg1 = hb_itemPutNI(nullptr, static_cast<int>(arg1));
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
void topLevelChanged( bool topLevel )
*/
HB_FUNC_STATIC( QTOOLBAR_ONTOPLEVELCHANGED )
{
  auto sender = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());
  
  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("topLevelChanged(bool)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QToolBar::topLevelChanged,
                                                              [sender, indexOfCodeBlock]
                                                              (bool arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QTOOLBAR");
            auto pArg1 = hb_itemPutL(nullptr, arg1);
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
void visibilityChanged( bool visible )
*/
HB_FUNC_STATIC( QTOOLBAR_ONVISIBILITYCHANGED )
{
  auto sender = qobject_cast<QToolBar*>(Qt5xHb::getQObjectPointerFromSelfItem());

  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("visibilityChanged(bool)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QToolBar::visibilityChanged,
                                                              [sender, indexOfCodeBlock]
                                                              (bool arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QTOOLBAR");
            auto pArg1 = hb_itemPutL(nullptr, arg1);
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
