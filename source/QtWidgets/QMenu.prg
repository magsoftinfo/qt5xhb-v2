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
REQUEST QICON
REQUEST QRECT
REQUEST QSIZE
#endif

CLASS QMenu INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD actionAt
   METHOD actionGeometry
   METHOD activeAction
   METHOD setActiveAction
   METHOD addAction
   METHOD addMenu
   METHOD addSeparator
   METHOD clear
   METHOD defaultAction
   METHOD setDefaultAction
   METHOD exec
   METHOD hideTearOffMenu
   METHOD icon
   METHOD setIcon
   METHOD insertMenu
   METHOD insertSeparator
   METHOD isEmpty
   METHOD isTearOffEnabled
   METHOD setTearOffEnabled
   METHOD isTearOffMenuVisible
   METHOD menuAction
   METHOD popup
   METHOD separatorsCollapsible
   METHOD setSeparatorsCollapsible
   METHOD title
   METHOD setTitle
   METHOD sizeHint
   METHOD wceMenu
   METHOD addSection
   METHOD insertSection
   METHOD setNoReplayFor
   METHOD setAsDockMenu
   METHOD toolTipsVisible
   METHOD setToolTipsVisible
   METHOD toNSMenu

   METHOD onAboutToHide
   METHOD onAboutToShow
   METHOD onHovered
   METHOD onTriggered

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMenu
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QMenu>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QMenu>
#endif

HB_FUNC_STATIC( QMENU_NEW )
{
  if( ISBETWEEN(0, 1) && ( ISQWIDGET(1) || HB_ISNIL(1) ) )
  {
    /*
    QMenu( QWidget * parent = nullptr )
    */
    auto obj = new QMenu( OPQWIDGET( 1, nullptr ) );
    Qt5xHb::returnNewObject(obj, false);

  }
  else if( ISBETWEEN(1, 2) && HB_ISCHAR(1) && ( ISQWIDGET(2) || HB_ISNIL(2) ) )
  {
    /*
    QMenu( const QString & title, QWidget * parent = nullptr )
    */
    auto obj = new QMenu( PQSTRING(1), OPQWIDGET( 2, nullptr ) );
    Qt5xHb::returnNewObject(obj, false);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QMENU_DELETE )
{
  auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

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

/*
QAction * actionAt( const QPoint & pt ) const
*/
HB_FUNC_STATIC( QMENU_ACTIONAT )
{
  auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOINT(1) )
    {
#endif
      QAction * ptr = obj->actionAt( *PQPOINT(1) );
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
QRect actionGeometry( QAction * act ) const
*/
HB_FUNC_STATIC( QMENU_ACTIONGEOMETRY )
{
  auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQACTION(1) )
    {
#endif
      auto ptr = new QRect( obj->actionGeometry( PQACTION(1) ) );
      Qt5xHb::createReturnClass(ptr, "QRECT", true);
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
QAction * activeAction() const
*/
HB_FUNC_STATIC( QMENU_ACTIVEACTION )
{
  auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->activeAction();
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
void setActiveAction( QAction * act )
*/
HB_FUNC_STATIC( QMENU_SETACTIVEACTION )
{
  auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQACTION(1) )
    {
#endif
      obj->setActiveAction( PQACTION(1) );
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

HB_FUNC_STATIC( QMENU_ADDACTION )
{
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QAction * addAction( const QString & text )
    */
    auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
    auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      QAction * ptr = obj->addAction( HB_ISOBJECT(1) ? *static_cast<QIcon*>(Qt5xHb::itemGetPtr(1)) : QIcon( hb_parc(1) ), PQSTRING(2) );
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
    }

  }
  else if( ISBETWEEN(3, 4) && HB_ISCHAR(1) && ISQOBJECT(2) && HB_ISCHAR(3) && ( ISQKEYSEQUENCE(4) || HB_ISNIL(4) ) )
  {
    /*
    QAction * addAction( const QString & text, const QObject * receiver, const char * member, const QKeySequence & shortcut = 0 )
    */
    auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      QAction * ptr = obj->addAction( PQSTRING(1), PQOBJECT(2), PCONSTCHAR(3), HB_ISNIL(4) ? 0 : *static_cast<QKeySequence*>(Qt5xHb::itemGetPtr(4)) );
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
    }

  }
  else if( ISBETWEEN(4, 5) && ( ISQICON(1)|| HB_ISCHAR(1) ) && HB_ISCHAR(2) && ISQOBJECT(3) && HB_ISCHAR(4) && ( ISQKEYSEQUENCE(5) || HB_ISNIL(5) ) )
  {
    /*
    QAction * addAction( const QIcon & icon, const QString & text, const QObject * receiver, const char * member, const QKeySequence & shortcut = 0 )
    */
    auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      QAction * ptr = obj->addAction( HB_ISOBJECT(1) ? *static_cast<QIcon*>(Qt5xHb::itemGetPtr(1)) : QIcon( hb_parc(1) ), PQSTRING(2), PQOBJECT(3), PCONSTCHAR(4), HB_ISNIL(5) ? 0 : *static_cast<QKeySequence*>(Qt5xHb::itemGetPtr(5)) );
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
    }

  }
  else if( ISNUMPAR(1) && ISQACTION(1) )
  {
    /*
    void addAction( QAction * action )
    */
    auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      obj->addAction( PQACTION(1) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QMENU_ADDMENU )
{
  if( ISNUMPAR(1) && ISQMENU(1) )
  {
    /*
    QAction * addMenu( QMenu * menu )
    */
    auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      QAction * ptr = obj->addMenu( PQMENU(1) );
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
    }

  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QMenu * addMenu( const QString & title )
    */
    auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      QMenu * ptr = obj->addMenu( PQSTRING(1) );
      Qt5xHb::createReturnQWidgetClass( ptr, "QMENU");
    }

  }
  else if( ISNUMPAR(2) && ( ISQICON(1)|| HB_ISCHAR(1) ) && HB_ISCHAR(2) )
  {
    /*
    QMenu * addMenu( const QIcon & icon, const QString & title )
    */
    auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      QMenu * ptr = obj->addMenu( HB_ISOBJECT(1) ? *static_cast<QIcon*>(Qt5xHb::itemGetPtr(1)) : QIcon( hb_parc(1) ), PQSTRING(2) );
      Qt5xHb::createReturnQWidgetClass( ptr, "QMENU");
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
HB_FUNC_STATIC( QMENU_ADDSEPARATOR )
{
  auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
void clear()
*/
HB_FUNC_STATIC( QMENU_CLEAR )
{
  auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
QAction * defaultAction() const
*/
HB_FUNC_STATIC( QMENU_DEFAULTACTION )
{
  auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->defaultAction();
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
void setDefaultAction( QAction * act )
*/
HB_FUNC_STATIC( QMENU_SETDEFAULTACTION )
{
  auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQACTION(1) )
    {
#endif
      obj->setDefaultAction( PQACTION(1) );
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

HB_FUNC_STATIC( QMENU_EXEC )
{
  if( ISNUMPAR(0) )
  {
    /*
    QAction * exec()
    */
    auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      QAction * ptr = obj->exec();
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
    }

  }
  else if( ISBETWEEN(1, 2) && ISQPOINT(1) && ( ISQACTION(2) || HB_ISNIL(2) ) )
  {
    /*
    QAction * exec( const QPoint & pos, QAction * at = nullptr )
    */
    auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      QAction * ptr = obj->exec( *PQPOINT(1), OPQACTION( 2, nullptr ) );
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
    }

  }
  else if( ISBETWEEN(2, 4) && HB_ISARRAY(1) && ISQPOINT(2) && ( ISQACTION(3) || HB_ISNIL(3) ) && ( ISQWIDGET(4) || HB_ISNIL(4) ) )
  {
    /*
    static QAction * exec( QList<QAction *> actions, const QPoint & pos, QAction * at = 0, QWidget * parent = 0 )
    */

    QList<QAction *> par1;
    PHB_ITEM aList1 = hb_param( 1, HB_IT_ARRAY );
    int nLen1 = hb_arrayLen( aList1 );
    for( auto i1 = 0; i1 < nLen1; i1++ )
    {
      par1 << static_cast<QAction*>( hb_itemGetPtr( hb_objSendMsg(hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0) ) );
    }
    QAction * ptr = QMenu::exec( par1, *PQPOINT(2), OPQACTION( 3, 0 ), OPQWIDGET( 4, 0 ) );
    Qt5xHb::createReturnQObjectClass(ptr, "QACTION");

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void hideTearOffMenu()
*/
HB_FUNC_STATIC( QMENU_HIDETEAROFFMENU )
{
  auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->hideTearOffMenu();
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
QIcon icon() const
*/
HB_FUNC_STATIC( QMENU_ICON )
{
  auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QIcon( obj->icon() );
      Qt5xHb::createReturnClass(ptr, "QICON", true);
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
void setIcon( const QIcon & icon )
*/
HB_FUNC_STATIC( QMENU_SETICON )
{
  auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ( ISQICON(1) || HB_ISCHAR(1) ) )
    {
#endif
      obj->setIcon( HB_ISOBJECT(1) ? *static_cast<QIcon*>(Qt5xHb::itemGetPtr(1)) : QIcon( hb_parc(1) ) );
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
QAction * insertMenu( QAction * before, QMenu * menu )
*/
HB_FUNC_STATIC( QMENU_INSERTMENU )
{
  auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQACTION(1) && ISQMENU(2) )
    {
#endif
      QAction * ptr = obj->insertMenu( PQACTION(1), PQMENU(2) );
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
QAction * insertSeparator( QAction * before )
*/
HB_FUNC_STATIC( QMENU_INSERTSEPARATOR )
{
  auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
bool isEmpty() const
*/
HB_FUNC_STATIC( QMENU_ISEMPTY )
{
  auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isEmpty() );
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
bool isTearOffEnabled() const
*/
HB_FUNC_STATIC( QMENU_ISTEAROFFENABLED )
{
  auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isTearOffEnabled() );
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
void setTearOffEnabled( bool )
*/
HB_FUNC_STATIC( QMENU_SETTEAROFFENABLED )
{
  auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setTearOffEnabled( PBOOL(1) );
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
bool isTearOffMenuVisible() const
*/
HB_FUNC_STATIC( QMENU_ISTEAROFFMENUVISIBLE )
{
  auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isTearOffMenuVisible() );
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
QAction * menuAction() const
*/
HB_FUNC_STATIC( QMENU_MENUACTION )
{
  auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->menuAction();
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
void popup( const QPoint & pos, QAction * at = nullptr )
*/
HB_FUNC_STATIC( QMENU_POPUP )
{
  auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && ISQPOINT(1) && ( ISQACTION(2) || HB_ISNIL(2) ) )
    {
#endif
      obj->popup( *PQPOINT(1), OPQACTION( 2, nullptr ) );
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
bool separatorsCollapsible() const
*/
HB_FUNC_STATIC( QMENU_SEPARATORSCOLLAPSIBLE )
{
  auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->separatorsCollapsible() );
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
void setSeparatorsCollapsible( bool collapse )
*/
HB_FUNC_STATIC( QMENU_SETSEPARATORSCOLLAPSIBLE )
{
  auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setSeparatorsCollapsible( PBOOL(1) );
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
QString title() const
*/
HB_FUNC_STATIC( QMENU_TITLE )
{
  auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->title() );
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
void setTitle( const QString & title )
*/
HB_FUNC_STATIC( QMENU_SETTITLE )
{
  auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setTitle( PQSTRING(1) );
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
QSize sizeHint() const
*/
HB_FUNC_STATIC( QMENU_SIZEHINT )
{
  auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QSize( obj->sizeHint() );
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
HMENU wceMenu ()
*/
HB_FUNC_STATIC( QMENU_WCEMENU )
{
#ifdef Q_OS_WINCE
  auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      hb_retptr( static_cast< HMENU >( obj->wceMenu() ) );
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

HB_FUNC_STATIC( QMENU_ADDSECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0) )
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QAction * addSection( const QString & text )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
    auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      QAction * ptr = obj->addSection( PQSTRING(1) );
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
    }
#endif

  }
  else if( ISNUMPAR(2) && ( ISQICON(1)|| HB_ISCHAR(1) ) && HB_ISCHAR(2) )
  {
    /*
    QAction * addSection( const QIcon & icon, const QString & text )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
    auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      QAction * ptr = obj->addSection( HB_ISOBJECT(1) ? *static_cast<QIcon*>(Qt5xHb::itemGetPtr(1)) : QIcon( hb_parc(1) ), PQSTRING(2) );
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
    }
#endif

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC( QMENU_INSERTSECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0) )
  if( ISNUMPAR(2) && ISQACTION(1) && HB_ISCHAR(2) )
  {
    /*
    QAction * insertSection( QAction * before, const QString & text )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
    auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      QAction * ptr = obj->insertSection( PQACTION(1), PQSTRING(2) );
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
    }
#endif

  }
  else if( ISNUMPAR(3) && ISQACTION(1) && ( ISQICON(2)|| HB_ISCHAR(2) ) && HB_ISCHAR(3) )
  {
    /*
    QAction * insertSection( QAction * before, const QIcon & icon, const QString & text )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
    auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      QAction * ptr = obj->insertSection( PQACTION(1), HB_ISOBJECT(2) ? *static_cast<QIcon*>(Qt5xHb::itemGetPtr(2)) : QIcon( hb_parc(2) ), PQSTRING(3) );
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
    }
#endif

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
void setNoReplayFor( QWidget * widget )
*/
HB_FUNC_STATIC( QMENU_SETNOREPLAYFOR )
{
  auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
#endif
      obj->setNoReplayFor( PQWIDGET(1) );
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
void setAsDockMenu()
*/
HB_FUNC_STATIC( QMENU_SETASDOCKMENU )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifdef Q_OS_OSX
  auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->setAsDockMenu();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
#endif
}

/*
bool toolTipsVisible() const
*/
HB_FUNC_STATIC( QMENU_TOOLTIPSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->toolTipsVisible() );
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
void setToolTipsVisible( bool visible )
*/
HB_FUNC_STATIC( QMENU_SETTOOLTIPSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setToolTipsVisible( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
NSMenu * QMenu::toNSMenu()
*/
HB_FUNC_STATIC( QMENU_TONSMENU )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifdef Q_OS_OSX
  auto obj = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      hb_retptr( static_cast< NSMenu*>( obj->toNSMenu() ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
#endif
}

/*
void aboutToHide()
*/
HB_FUNC_STATIC( QMENU_ONABOUTTOHIDE )
{
  auto sender = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("aboutToHide()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QMenu::aboutToHide,
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QMENU");
            hb_vmEvalBlockV(cb, 1, pSender);
            hb_itemRelease(pSender);
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
void aboutToShow()
*/
HB_FUNC_STATIC( QMENU_ONABOUTTOSHOW )
{
  auto sender = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("aboutToShow()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QMenu::aboutToShow,
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QMENU");
            hb_vmEvalBlockV(cb, 1, pSender);
            hb_itemRelease(pSender);
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
void hovered( QAction * action )
*/
HB_FUNC_STATIC( QMENU_ONHOVERED )
{
  auto sender = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());
  
  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("hovered(QAction*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QMenu::hovered,
                                                              [sender, indexOfCodeBlock]
                                                              (QAction * arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QMENU");
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_qobject(arg1, "QACTION");
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
void triggered( QAction * action )
*/
HB_FUNC_STATIC( QMENU_ONTRIGGERED )
{
  auto sender = qobject_cast<QMenu*>(Qt5xHb::getQObjectPointerFromSelfItem());

  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("triggered(QAction*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QMenu::triggered,
                                                              [sender, indexOfCodeBlock]
                                                              (QAction * arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QMENU");
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_qobject(arg1, "QACTION");
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
