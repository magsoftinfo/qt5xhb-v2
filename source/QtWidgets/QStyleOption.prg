/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QFONTMETRICS
REQUEST QOBJECT
REQUEST QPALETTE
REQUEST QRECT
#endif

CLASS QStyleOption

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD init
   METHOD initFrom
   METHOD version
   METHOD setVersion
   METHOD type
   METHOD setType
   METHOD state
   METHOD setState
   METHOD direction
   METHOD setDirection
   METHOD rect
   METHOD setRect
   METHOD fontMetrics
   METHOD setFontMetrics
   METHOD palette
   METHOD setPalette
   METHOD styleObject
   METHOD setStyleObject

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOption
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QStyleOption>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QStyleOption>
#endif

/*
QStyleOption( int version = QStyleOption::Version, int type = QStyleOption::SO_Default )
*/
void QStyleOption_new1()
{
  auto obj = new QStyleOption( OPINT(1,QStyleOption::Version), OPINT(2,QStyleOption::SO_Default) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QStyleOption( const QStyleOption & other )
*/
void QStyleOption_new2()
{
  auto obj = new QStyleOption( *PQSTYLEOPTION(1) );
  Qt5xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QSTYLEOPTION_NEW )
{
  if( ISBETWEEN(0,2) && (ISNUM(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    QStyleOption_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTION(1) )
  {
    QStyleOption_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QStyleOption()
*/
HB_FUNC_STATIC( QSTYLEOPTION_DELETE )
{
  auto obj = (QStyleOption *) Qt5xHb::itemGetPtrStackSelfItem();

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
void init( const QWidget * w )
*/
HB_FUNC_STATIC( QSTYLEOPTION_INIT )
{
  auto obj = (QStyleOption *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
#endif
      obj->init( PQWIDGET(1) );
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
void initFrom( const QWidget * w )
*/
HB_FUNC_STATIC( QSTYLEOPTION_INITFROM )
{
  auto obj = (QStyleOption *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
#endif
      obj->initFrom( PQWIDGET(1) );
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
int version
*/
HB_FUNC_STATIC( QSTYLEOPTION_VERSION )
{
  auto obj = (QStyleOption *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->version );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTION_SETVERSION )
{
  auto obj = (QStyleOption *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->version= PINT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int type
*/
HB_FUNC_STATIC( QSTYLEOPTION_TYPE )
{
  auto obj = (QStyleOption *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->type );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTION_SETTYPE )
{
  auto obj = (QStyleOption *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->type= PINT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStyle::State state
*/
HB_FUNC_STATIC( QSTYLEOPTION_STATE )
{
  auto obj = (QStyleOption *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->state );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTION_SETSTATE )
{
  auto obj = (QStyleOption *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->state= (QStyle::State) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::LayoutDirection direction
*/
HB_FUNC_STATIC( QSTYLEOPTION_DIRECTION )
{
  auto obj = (QStyleOption *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->direction );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTION_SETDIRECTION )
{
  auto obj = (QStyleOption *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->direction= (Qt::LayoutDirection) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRect rect
*/
HB_FUNC_STATIC( QSTYLEOPTION_RECT )
{
  auto obj = (QStyleOption *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      auto ptr = new QRect( obj->rect );
      Qt5xHb::createReturnClass( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTION_SETRECT )
{
  auto obj = (QStyleOption *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISQRECT(1) )
    {
      obj->rect= *PQRECT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QFontMetrics fontMetrics
*/
HB_FUNC_STATIC( QSTYLEOPTION_FONTMETRICS )
{
  auto obj = (QStyleOption *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      auto ptr = new QFontMetrics( obj->fontMetrics );
      Qt5xHb::createReturnClass( ptr, "QFONTMETRICS", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTION_SETFONTMETRICS )
{
  auto obj = (QStyleOption *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISQFONTMETRICS(1) )
    {
      obj->fontMetrics= *PQFONTMETRICS(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPalette palette
*/
HB_FUNC_STATIC( QSTYLEOPTION_PALETTE )
{
  auto obj = (QStyleOption *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      auto ptr = new QPalette( obj->palette );
      Qt5xHb::createReturnClass( ptr, "QPALETTE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTION_SETPALETTE )
{
  auto obj = (QStyleOption *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISQPALETTE(1) )
    {
      obj->palette= *PQPALETTE(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QObject *styleObject
*/
HB_FUNC_STATIC( QSTYLEOPTION_STYLEOBJECT )
{
  auto obj = (QStyleOption *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      QObject * ptr = obj->styleObject;
      Qt5xHb::createReturnQObjectClass( ptr, "QOBJECT" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTION_SETSTYLEOBJECT )
{
  auto obj = (QStyleOption *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISQOBJECT(1) )
    {
      obj->styleObject= PQOBJECT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QSTYLEOPTION_NEWFROM )
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

HB_FUNC_STATIC( QSTYLEOPTION_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSTYLEOPTION_NEWFROM );
}

HB_FUNC_STATIC( QSTYLEOPTION_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSTYLEOPTION_NEWFROM );
}

HB_FUNC_STATIC( QSTYLEOPTION_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSTYLEOPTION_SETSELFDESTRUCTION )
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
