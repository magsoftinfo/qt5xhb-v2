/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QPOLYGONF
REQUEST QRECTF
#endif

CLASS QPainterPath

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addEllipse
   METHOD addPath
   METHOD addPolygon
   METHOD addRect
   METHOD addRegion
   METHOD addRoundedRect
   METHOD addText
   METHOD angleAtPercent
   METHOD arcMoveTo
   METHOD arcTo
   METHOD boundingRect
   METHOD closeSubpath
   METHOD connectPath
   METHOD contains
   METHOD controlPointRect
   METHOD cubicTo
   METHOD currentPosition
   METHOD elementCount
   METHOD fillRule
   METHOD intersected
   METHOD intersects
   METHOD isEmpty
   METHOD length
   METHOD lineTo
   METHOD moveTo
   METHOD percentAtLength
   METHOD pointAtPercent
   METHOD quadTo
   METHOD setElementPositionAt
   METHOD setFillRule
   METHOD simplified
   METHOD slopeAtPercent
   METHOD subtracted
   METHOD swap
   METHOD toFillPolygon
   METHOD toReversed
   METHOD translate
   METHOD translated
   METHOD united
   METHOD capacity
   METHOD clear
   METHOD reserve

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPainterPath
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QPainterPath>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtGui/QPainterPath>
#endif

/*
QPainterPath ()
*/
void QPainterPath_new1()
{
  auto obj = new QPainterPath();
  Qt5xHb::returnNewObject( obj, true );
}

/*
QPainterPath ( const QPointF & startPoint )
*/
void QPainterPath_new2()
{
  auto obj = new QPainterPath( *PQPOINTF(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QPainterPath ( const QPainterPath & path )
*/
void QPainterPath_new3()
{
  auto obj = new QPainterPath( *PQPAINTERPATH(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
[1]QPainterPath ()
[2]QPainterPath ( const QPointF & startPoint )
[3]QPainterPath ( const QPainterPath & path )
*/

HB_FUNC_STATIC( QPAINTERPATH_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPainterPath_new1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QPainterPath_new2();
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    QPainterPath_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QPainterPath()
*/
HB_FUNC_STATIC( QPAINTERPATH_DELETE )
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
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
void addEllipse ( const QRectF & boundingRectangle )
*/
void QPainterPath_addEllipse1()
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->addEllipse( *PQRECTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addEllipse ( qreal x, qreal y, qreal width, qreal height )
*/
void QPainterPath_addEllipse2()
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->addEllipse( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addEllipse ( const QPointF & center, qreal rx, qreal ry )
*/
void QPainterPath_addEllipse3()
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->addEllipse( *PQPOINTF(1), PQREAL(2), PQREAL(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void addEllipse ( const QRectF & boundingRectangle )
[2]void addEllipse ( qreal x, qreal y, qreal width, qreal height )
[3]void addEllipse ( const QPointF & center, qreal rx, qreal ry )
*/

HB_FUNC_STATIC( QPAINTERPATH_ADDELLIPSE )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QPainterPath_addEllipse1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QPainterPath_addEllipse2();
  }
  else if( ISNUMPAR(3) && ISQPOINTF(1) && ISNUM(2) && ISNUM(3) )
  {
    QPainterPath_addEllipse3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addPath ( const QPainterPath & path )
*/
HB_FUNC_STATIC( QPAINTERPATH_ADDPATH )
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
    {
#endif
      obj->addPath( *PQPAINTERPATH(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addPolygon ( const QPolygonF & polygon )
*/
HB_FUNC_STATIC( QPAINTERPATH_ADDPOLYGON )
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOLYGONF(1) )
    {
#endif
      obj->addPolygon( *PQPOLYGONF(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addRect ( const QRectF & rectangle )
*/
void QPainterPath_addRect1()
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->addRect( *PQRECTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addRect ( qreal x, qreal y, qreal width, qreal height )
*/
void QPainterPath_addRect2()
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->addRect( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void addRect ( const QRectF & rectangle )
[2]void addRect ( qreal x, qreal y, qreal width, qreal height )
*/

HB_FUNC_STATIC( QPAINTERPATH_ADDRECT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QPainterPath_addRect1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QPainterPath_addRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addRegion ( const QRegion & region )
*/
HB_FUNC_STATIC( QPAINTERPATH_ADDREGION )
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQREGION(1) )
    {
#endif
      obj->addRegion( *PQREGION(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addRoundedRect ( const QRectF & rect, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
*/
void QPainterPath_addRoundedRect1()
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->addRoundedRect( *PQRECTF(1), PQREAL(2), PQREAL(3), ISNIL(4)? (Qt::SizeMode) Qt::AbsoluteSize : (Qt::SizeMode) hb_parni(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addRoundedRect ( qreal x, qreal y, qreal w, qreal h, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
*/
void QPainterPath_addRoundedRect2()
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->addRoundedRect( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), PQREAL(6), ISNIL(7)? (Qt::SizeMode) Qt::AbsoluteSize : (Qt::SizeMode) hb_parni(7) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void addRoundedRect ( const QRectF & rect, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
[2]void addRoundedRect ( qreal x, qreal y, qreal w, qreal h, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
*/

HB_FUNC_STATIC( QPAINTERPATH_ADDROUNDEDRECT )
{
  if( ISBETWEEN(3,4) && ISQRECTF(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) )
  {
    QPainterPath_addRoundedRect1();
  }
  else if( ISBETWEEN(6,7) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) && ISOPTNUM(7) )
  {
    QPainterPath_addRoundedRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addText ( const QPointF & point, const QFont & font, const QString & text )
*/
void QPainterPath_addText1()
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->addText( *PQPOINTF(1), *PQFONT(2), PQSTRING(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addText ( qreal x, qreal y, const QFont & font, const QString & text )
*/
void QPainterPath_addText2()
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->addText( PQREAL(1), PQREAL(2), *PQFONT(3), PQSTRING(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void addText ( const QPointF & point, const QFont & font, const QString & text )
[2]void addText ( qreal x, qreal y, const QFont & font, const QString & text )
*/

HB_FUNC_STATIC( QPAINTERPATH_ADDTEXT )
{
  if( ISNUMPAR(3) && ISQPOINTF(1) && ISQFONT(2) && ISCHAR(3) )
  {
    QPainterPath_addText1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISQFONT(3) && ISCHAR(4) )
  {
    QPainterPath_addText2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
qreal angleAtPercent ( qreal t ) const
*/
HB_FUNC_STATIC( QPAINTERPATH_ANGLEATPERCENT )
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RQREAL( obj->angleAtPercent( PQREAL(1) ) );
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
void arcMoveTo ( const QRectF & rectangle, qreal angle )
*/
void QPainterPath_arcMoveTo1()
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->arcMoveTo( *PQRECTF(1), PQREAL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void arcMoveTo ( qreal x, qreal y, qreal width, qreal height, qreal angle )
*/
void QPainterPath_arcMoveTo2()
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->arcMoveTo( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void arcMoveTo ( const QRectF & rectangle, qreal angle )
[2]void arcMoveTo ( qreal x, qreal y, qreal width, qreal height, qreal angle )
*/

HB_FUNC_STATIC( QPAINTERPATH_ARCMOVETO )
{
  if( ISNUMPAR(2) && ISQRECTF(1) && ISNUM(2) )
  {
    QPainterPath_arcMoveTo1();
  }
  else if( ISNUMPAR(5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    QPainterPath_arcMoveTo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void arcTo ( const QRectF & rectangle, qreal startAngle, qreal sweepLength )
*/
void QPainterPath_arcTo1()
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->arcTo( *PQRECTF(1), PQREAL(2), PQREAL(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void arcTo ( qreal x, qreal y, qreal width, qreal height, qreal startAngle, qreal sweepLength )
*/
void QPainterPath_arcTo2()
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->arcTo( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), PQREAL(6) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void arcTo ( const QRectF & rectangle, qreal startAngle, qreal sweepLength )
[2]void arcTo ( qreal x, qreal y, qreal width, qreal height, qreal startAngle, qreal sweepLength )
*/

HB_FUNC_STATIC( QPAINTERPATH_ARCTO )
{
  if( ISNUMPAR(3) && ISQRECTF(1) && ISNUM(2) && ISNUM(3) )
  {
    QPainterPath_arcTo1();
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    QPainterPath_arcTo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRectF boundingRect () const
*/
HB_FUNC_STATIC( QPAINTERPATH_BOUNDINGRECT )
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QRectF( obj->boundingRect() );
      Qt5xHb::createReturnClass( ptr, "QRECTF", true );
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
void closeSubpath ()
*/
HB_FUNC_STATIC( QPAINTERPATH_CLOSESUBPATH )
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->closeSubpath();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void connectPath ( const QPainterPath & path )
*/
HB_FUNC_STATIC( QPAINTERPATH_CONNECTPATH )
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
    {
#endif
      obj->connectPath( *PQPAINTERPATH(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool contains ( const QPointF & point ) const
*/
void QPainterPath_contains1()
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RBOOL( obj->contains( *PQPOINTF(1) ) );
  }
}

/*
bool contains ( const QRectF & rectangle ) const
*/
void QPainterPath_contains2()
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RBOOL( obj->contains( *PQRECTF(1) ) );
  }
}

/*
bool contains ( const QPainterPath & p ) const
*/
void QPainterPath_contains3()
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RBOOL( obj->contains( *PQPAINTERPATH(1) ) );
  }
}

/*
[1]bool contains ( const QPointF & point ) const
[2]bool contains ( const QRectF & rectangle ) const
[3]bool contains ( const QPainterPath & p ) const
*/

HB_FUNC_STATIC( QPAINTERPATH_CONTAINS )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QPainterPath_contains1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QPainterPath_contains2();
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    QPainterPath_contains3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRectF controlPointRect () const
*/
HB_FUNC_STATIC( QPAINTERPATH_CONTROLPOINTRECT )
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QRectF( obj->controlPointRect() );
      Qt5xHb::createReturnClass( ptr, "QRECTF", true );
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
void cubicTo ( const QPointF & c1, const QPointF & c2, const QPointF & endPoint )
*/
void QPainterPath_cubicTo1()
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->cubicTo( *PQPOINTF(1), *PQPOINTF(2), *PQPOINTF(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void cubicTo ( qreal c1X, qreal c1Y, qreal c2X, qreal c2Y, qreal endPointX, qreal endPointY )
*/
void QPainterPath_cubicTo2()
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->cubicTo( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), PQREAL(6) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void cubicTo ( const QPointF & c1, const QPointF & c2, const QPointF & endPoint )
[2]void cubicTo ( qreal c1X, qreal c1Y, qreal c2X, qreal c2Y, qreal endPointX, qreal endPointY )
*/

HB_FUNC_STATIC( QPAINTERPATH_CUBICTO )
{
  if( ISNUMPAR(3) && ISQPOINTF(1) && ISQPOINTF(2) && ISQPOINTF(3) )
  {
    QPainterPath_cubicTo1();
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    QPainterPath_cubicTo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPointF currentPosition () const
*/
HB_FUNC_STATIC( QPAINTERPATH_CURRENTPOSITION )
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QPointF( obj->currentPosition() );
      Qt5xHb::createReturnClass( ptr, "QPOINTF", true );
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
int elementCount () const
*/
HB_FUNC_STATIC( QPAINTERPATH_ELEMENTCOUNT )
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->elementCount() );
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
Qt::FillRule fillRule () const
*/
HB_FUNC_STATIC( QPAINTERPATH_FILLRULE )
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->fillRule() );
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
QPainterPath intersected ( const QPainterPath & p ) const
*/
HB_FUNC_STATIC( QPAINTERPATH_INTERSECTED )
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
    {
#endif
      auto ptr = new QPainterPath( obj->intersected( *PQPAINTERPATH(1) ) );
      Qt5xHb::createReturnClass( ptr, "QPAINTERPATH", true );
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
bool intersects ( const QRectF & rectangle ) const
*/
void QPainterPath_intersects1()
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RBOOL( obj->intersects( *PQRECTF(1) ) );
  }
}

/*
bool intersects ( const QPainterPath & p ) const
*/
void QPainterPath_intersects2()
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RBOOL( obj->intersects( *PQPAINTERPATH(1) ) );
  }
}

/*
[1]bool intersects ( const QRectF & rectangle ) const
[2]bool intersects ( const QPainterPath & p ) const
*/

HB_FUNC_STATIC( QPAINTERPATH_INTERSECTS )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QPainterPath_intersects1();
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    QPainterPath_intersects2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QPAINTERPATH_ISEMPTY )
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

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
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
qreal length () const
*/
HB_FUNC_STATIC( QPAINTERPATH_LENGTH )
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->length() );
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
void lineTo ( const QPointF & endPoint )
*/
void QPainterPath_lineTo1()
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->lineTo( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void lineTo ( qreal x, qreal y )
*/
void QPainterPath_lineTo2()
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->lineTo( PQREAL(1), PQREAL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void lineTo ( const QPointF & endPoint )
[2]void lineTo ( qreal x, qreal y )
*/

HB_FUNC_STATIC( QPAINTERPATH_LINETO )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QPainterPath_lineTo1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPainterPath_lineTo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void moveTo ( const QPointF & point )
*/
void QPainterPath_moveTo1()
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->moveTo( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void moveTo ( qreal x, qreal y )
*/
void QPainterPath_moveTo2()
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->moveTo( PQREAL(1), PQREAL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void moveTo ( const QPointF & point )
[2]void moveTo ( qreal x, qreal y )
*/

HB_FUNC_STATIC( QPAINTERPATH_MOVETO )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QPainterPath_moveTo1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPainterPath_moveTo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
qreal percentAtLength ( qreal len ) const
*/
HB_FUNC_STATIC( QPAINTERPATH_PERCENTATLENGTH )
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RQREAL( obj->percentAtLength( PQREAL(1) ) );
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
QPointF pointAtPercent ( qreal t ) const
*/
HB_FUNC_STATIC( QPAINTERPATH_POINTATPERCENT )
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      auto ptr = new QPointF( obj->pointAtPercent( PQREAL(1) ) );
      Qt5xHb::createReturnClass( ptr, "QPOINTF", true );
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
void quadTo ( const QPointF & c, const QPointF & endPoint )
*/
void QPainterPath_quadTo1()
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->quadTo( *PQPOINTF(1), *PQPOINTF(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void quadTo ( qreal cx, qreal cy, qreal endPointX, qreal endPointY )
*/
void QPainterPath_quadTo2()
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->quadTo( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void quadTo ( const QPointF & c, const QPointF & endPoint )
[2]void quadTo ( qreal cx, qreal cy, qreal endPointX, qreal endPointY )
*/

HB_FUNC_STATIC( QPAINTERPATH_QUADTO )
{
  if( ISNUMPAR(2) && ISQPOINTF(1) && ISQPOINTF(2) )
  {
    QPainterPath_quadTo1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QPainterPath_quadTo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setElementPositionAt ( int index, qreal x, qreal y )
*/
HB_FUNC_STATIC( QPAINTERPATH_SETELEMENTPOSITIONAT )
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
    {
#endif
      obj->setElementPositionAt( PINT(1), PQREAL(2), PQREAL(3) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFillRule ( Qt::FillRule fillRule )
*/
HB_FUNC_STATIC( QPAINTERPATH_SETFILLRULE )
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setFillRule( (Qt::FillRule) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPainterPath simplified () const
*/
HB_FUNC_STATIC( QPAINTERPATH_SIMPLIFIED )
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QPainterPath( obj->simplified() );
      Qt5xHb::createReturnClass( ptr, "QPAINTERPATH", true );
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
qreal slopeAtPercent ( qreal t ) const
*/
HB_FUNC_STATIC( QPAINTERPATH_SLOPEATPERCENT )
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RQREAL( obj->slopeAtPercent( PQREAL(1) ) );
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
QPainterPath subtracted ( const QPainterPath & p ) const
*/
HB_FUNC_STATIC( QPAINTERPATH_SUBTRACTED )
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
    {
#endif
      auto ptr = new QPainterPath( obj->subtracted( *PQPAINTERPATH(1) ) );
      Qt5xHb::createReturnClass( ptr, "QPAINTERPATH", true );
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
void swap ( QPainterPath & other )
*/
HB_FUNC_STATIC( QPAINTERPATH_SWAP )
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
    {
#endif
      obj->swap( *PQPAINTERPATH(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPolygonF toFillPolygon ( const QTransform & matrix ) const
*/
void QPainterPath_toFillPolygon1()
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    auto ptr = new QPolygonF( obj->toFillPolygon( *PQTRANSFORM(1) ) );
    Qt5xHb::createReturnClass( ptr, "QPOLYGONF", true );
  }
}

/*
QPolygonF toFillPolygon ( const QMatrix & matrix = QMatrix() ) const
*/
void QPainterPath_toFillPolygon2()
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    auto ptr = new QPolygonF( obj->toFillPolygon( ISNIL(1)? QMatrix() : *(QMatrix *) Qt5xHb::itemGetPtr(1) ) );
    Qt5xHb::createReturnClass( ptr, "QPOLYGONF", true );
  }
}

/*
[1]QPolygonF toFillPolygon ( const QTransform & matrix ) const
[2]QPolygonF toFillPolygon ( const QMatrix & matrix = QMatrix() ) const
*/

HB_FUNC_STATIC( QPAINTERPATH_TOFILLPOLYGON )
{
  if( ISNUMPAR(1) && ISQTRANSFORM(1) )
  {
    QPainterPath_toFillPolygon1();
  }
  else if( ISBETWEEN(0,1) && ISQMATRIX(1) )
  {
    QPainterPath_toFillPolygon2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPainterPath toReversed () const
*/
HB_FUNC_STATIC( QPAINTERPATH_TOREVERSED )
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QPainterPath( obj->toReversed() );
      Qt5xHb::createReturnClass( ptr, "QPAINTERPATH", true );
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
void translate ( qreal dx, qreal dy )
*/
void QPainterPath_translate1()
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->translate( PQREAL(1), PQREAL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void translate ( const QPointF & offset )
*/
void QPainterPath_translate2()
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->translate( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void translate ( qreal dx, qreal dy )
[2]void translate ( const QPointF & offset )
*/

HB_FUNC_STATIC( QPAINTERPATH_TRANSLATE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPainterPath_translate1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QPainterPath_translate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPainterPath translated ( qreal dx, qreal dy ) const
*/
void QPainterPath_translated1()
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    auto ptr = new QPainterPath( obj->translated( PQREAL(1), PQREAL(2) ) );
    Qt5xHb::createReturnClass( ptr, "QPAINTERPATH", true );
  }
}

/*
QPainterPath translated ( const QPointF & offset ) const
*/
void QPainterPath_translated2()
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    auto ptr = new QPainterPath( obj->translated( *PQPOINTF(1) ) );
    Qt5xHb::createReturnClass( ptr, "QPAINTERPATH", true );
  }
}

/*
[1]QPainterPath translated ( qreal dx, qreal dy ) const
[2]QPainterPath translated ( const QPointF & offset ) const
*/

HB_FUNC_STATIC( QPAINTERPATH_TRANSLATED )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPainterPath_translated1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QPainterPath_translated2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPainterPath united ( const QPainterPath & p ) const
*/
HB_FUNC_STATIC( QPAINTERPATH_UNITED )
{
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
    {
#endif
      auto ptr = new QPainterPath( obj->united( *PQPAINTERPATH(1) ) );
      Qt5xHb::createReturnClass( ptr, "QPAINTERPATH", true );
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
int QPainterPath::capacity() const
*/
HB_FUNC_STATIC( QPAINTERPATH_CAPACITY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,13,0))
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->capacity() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void QPainterPath::clear()
*/
HB_FUNC_STATIC( QPAINTERPATH_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,13,0))
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

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
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void QPainterPath::reserve(int size)
*/
HB_FUNC_STATIC( QPAINTERPATH_RESERVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,13,0))
  auto obj = (QPainterPath *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->reserve( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

HB_FUNC_STATIC( QPAINTERPATH_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( nullptr, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( nullptr, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QPAINTERPATH_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPAINTERPATH_NEWFROM );
}

HB_FUNC_STATIC( QPAINTERPATH_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPAINTERPATH_NEWFROM );
}

HB_FUNC_STATIC( QPAINTERPATH_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPAINTERPATH_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( nullptr, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
