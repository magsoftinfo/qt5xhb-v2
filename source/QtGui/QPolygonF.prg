/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOLYGON
REQUEST QRECTF
#endif

CLASS QPolygonF

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD translate
   METHOD translated
   METHOD toPolygon
   METHOD isClosed
   METHOD boundingRect
   METHOD containsPoint
   METHOD united
   METHOD intersected
   METHOD subtracted

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPolygonF
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QPolygonF>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtGui/QPolygonF>
#endif

HB_FUNC_STATIC( QPOLYGONF_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QPolygonF()
    */
    auto obj = new QPolygonF();
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    QPolygonF( int size )
    */
    auto obj = new QPolygonF( PINT(1) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    /*
    QPolygonF( const QPolygonF & a )
    */
    auto obj = new QPolygonF( *PQPOLYGONF(1) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISNUMPAR(1) && HB_ISARRAY(1) )
  {
    /*
    QPolygonF( const QVector<QPointF> & v )
    */
    QVector<QPointF> par1;
    PHB_ITEM aList1 = hb_param( 1, HB_IT_ARRAY );
    int nLen1 = hb_arrayLen( aList1 );
    for( auto i1 = 0; i1 < nLen1; i1++ )
    {
      par1 << *static_cast<QPointF*>( hb_itemGetPtr( hb_objSendMsg(hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0) ) );
    }
    auto obj = new QPolygonF( par1 );
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    /*
    QPolygonF( const QRectF & r )
    */
    auto obj = new QPolygonF( *PQRECTF(1) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    /*
    QPolygonF( const QPolygon & a )
    */
    auto obj = new QPolygonF( *PQPOLYGON(1) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QPOLYGONF_DELETE )
{
  auto obj = static_cast<QPolygonF*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void swap( QPolygonF & other )
*/
HB_FUNC_STATIC( QPOLYGONF_SWAP )
{
  auto obj = static_cast<QPolygonF*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOLYGONF(1) )
    {
#endif
      obj->swap( *PQPOLYGONF(1) );
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

HB_FUNC_STATIC( QPOLYGONF_TRANSLATE )
{
  if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    /*
    void translate( qreal dx, qreal dy )
    */
    auto obj = static_cast<QPolygonF*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      obj->translate( PQREAL(1), PQREAL(2) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    /*
    void translate( const QPointF & offset )
    */
    auto obj = static_cast<QPolygonF*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      obj->translate( *PQPOINTF(1) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QPOLYGONF_TRANSLATED )
{
  if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    /*
    QPolygonF translated( qreal dx, qreal dy ) const
    */
    auto obj = static_cast<QPolygonF*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      auto ptr = new QPolygonF( obj->translated( PQREAL(1), PQREAL(2) ) );
      Qt5xHb::createReturnClass(ptr, "QPOLYGONF", true);
    }

  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    /*
    QPolygonF translated( const QPointF & offset ) const
    */
    auto obj = static_cast<QPolygonF*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      auto ptr = new QPolygonF( obj->translated( *PQPOINTF(1) ) );
      Qt5xHb::createReturnClass(ptr, "QPOLYGONF", true);
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QPolygon toPolygon() const
*/
HB_FUNC_STATIC( QPOLYGONF_TOPOLYGON )
{
  auto obj = static_cast<QPolygonF*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QPolygon( obj->toPolygon() );
      Qt5xHb::createReturnClass(ptr, "QPOLYGON", true);
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
bool isClosed() const
*/
HB_FUNC_STATIC( QPOLYGONF_ISCLOSED )
{
  auto obj = static_cast<QPolygonF*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isClosed() );
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
QRectF boundingRect() const
*/
HB_FUNC_STATIC( QPOLYGONF_BOUNDINGRECT )
{
  auto obj = static_cast<QPolygonF*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QRectF( obj->boundingRect() );
      Qt5xHb::createReturnClass(ptr, "QRECTF", true);
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
bool containsPoint( const QPointF & pt, Qt::FillRule fillRule ) const
*/
HB_FUNC_STATIC( QPOLYGONF_CONTAINSPOINT )
{
  auto obj = static_cast<QPolygonF*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQPOINTF(1) && HB_ISNUM(2) )
    {
#endif
      RBOOL( obj->containsPoint( *PQPOINTF(1), static_cast<Qt::FillRule>( hb_parni(2) ) ) );
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
QPolygonF united( const QPolygonF & r ) const
*/
HB_FUNC_STATIC( QPOLYGONF_UNITED )
{
  auto obj = static_cast<QPolygonF*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOLYGONF(1) )
    {
#endif
      auto ptr = new QPolygonF( obj->united( *PQPOLYGONF(1) ) );
      Qt5xHb::createReturnClass(ptr, "QPOLYGONF", true);
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
QPolygonF intersected( const QPolygonF & r ) const
*/
HB_FUNC_STATIC( QPOLYGONF_INTERSECTED )
{
  auto obj = static_cast<QPolygonF*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOLYGONF(1) )
    {
#endif
      auto ptr = new QPolygonF( obj->intersected( *PQPOLYGONF(1) ) );
      Qt5xHb::createReturnClass(ptr, "QPOLYGONF", true);
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
QPolygonF subtracted( const QPolygonF & r ) const
*/
HB_FUNC_STATIC( QPOLYGONF_SUBTRACTED )
{
  auto obj = static_cast<QPolygonF*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOLYGONF(1) )
    {
#endif
      auto ptr = new QPolygonF( obj->subtracted( *PQPOLYGONF(1) ) );
      Qt5xHb::createReturnClass(ptr, "QPOLYGONF", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QPOLYGONF_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QPOLYGONF_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPOLYGONF_NEWFROM );
}

HB_FUNC_STATIC( QPOLYGONF_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPOLYGONF_NEWFROM );
}

HB_FUNC_STATIC( QPOLYGONF_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QPOLYGONF_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(nullptr, hb_parl(1));
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
