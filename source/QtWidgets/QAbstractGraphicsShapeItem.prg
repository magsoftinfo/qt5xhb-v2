/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QPAINTERPATH
REQUEST QPEN
#endif

CLASS QAbstractGraphicsShapeItem INHERIT QGraphicsItem

   METHOD delete
   METHOD brush
   METHOD setBrush
   METHOD pen
   METHOD setPen
   METHOD isObscuredBy
   METHOD opaqueArea

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAbstractGraphicsShapeItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QAbstractGraphicsShapeItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QAbstractGraphicsShapeItem>
#endif

#include <QtGui/QBrush>
#include <QtGui/QPen>

HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_DELETE )
{
  auto obj = (QAbstractGraphicsShapeItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QBrush brush () const
*/
HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_BRUSH )
{
  auto obj = (QAbstractGraphicsShapeItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QBrush( obj->brush() );
      Qt5xHb::createReturnClass( ptr, "QBRUSH", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setBrush ( const QBrush & brush )
*/
HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_SETBRUSH )
{
  auto obj = (QAbstractGraphicsShapeItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
#endif
      obj->setBrush( *PQBRUSH(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPen pen () const
*/
HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_PEN )
{
  auto obj = (QAbstractGraphicsShapeItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QPen( obj->pen() );
      Qt5xHb::createReturnClass( ptr, "QPEN", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setPen ( const QPen & pen )
*/
HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_SETPEN )
{
  auto obj = (QAbstractGraphicsShapeItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPEN(1) )
    {
#endif
      obj->setPen( *PQPEN(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isObscuredBy ( const QGraphicsItem * item ) const
*/
HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_ISOBSCUREDBY )
{
  auto obj = (QAbstractGraphicsShapeItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGRAPHICSITEM(1) )
    {
#endif
      RBOOL( obj->isObscuredBy( PQGRAPHICSITEM(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QPainterPath opaqueArea () const
*/
HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_OPAQUEAREA )
{
  auto obj = (QAbstractGraphicsShapeItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QPainterPath( obj->opaqueArea() );
      Qt5xHb::createReturnClass( ptr, "QPAINTERPATH", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
