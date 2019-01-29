/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOCOORDINATE
#endif

CLASS QGeoRectangle INHERIT QGeoShape

   METHOD new
   METHOD delete
   METHOD setTopLeft
   METHOD topLeft
   METHOD setTopRight
   METHOD topRight
   METHOD setBottomLeft
   METHOD bottomLeft
   METHOD setBottomRight
   METHOD bottomRight
   METHOD setCenter
   METHOD center
   METHOD setWidth
   METHOD width
   METHOD setHeight
   METHOD height
   METHOD contains
   METHOD intersects
   METHOD translate
   METHOD translated
   METHOD united

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGeoRectangle
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QGeoRectangle>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals3.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QGeoRectangle>
#endif
#endif

/*
QGeoRectangle()
*/
void QGeoRectangle_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * o = new QGeoRectangle ();
  _qt5xhb_returnNewObject( o, true );
#endif
}

/*
QGeoRectangle(const QGeoCoordinate &center, double degreesWidth, double degreesHeight)
*/
void QGeoRectangle_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * o = new QGeoRectangle ( *PQGEOCOORDINATE(1), PDOUBLE(2), PDOUBLE(3) );
  _qt5xhb_returnNewObject( o, true );
#endif
}

/*
QGeoRectangle(const QGeoCoordinate &topLeft, const QGeoCoordinate &bottomRight)
*/
void QGeoRectangle_new3 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * o = new QGeoRectangle ( *PQGEOCOORDINATE(1), *PQGEOCOORDINATE(2) );
  _qt5xhb_returnNewObject( o, true );
#endif
}

/*
QGeoRectangle(const QGeoRectangle &other)
*/
void QGeoRectangle_new4 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * o = new QGeoRectangle ( *PQGEORECTANGLE(1) );
  _qt5xhb_returnNewObject( o, true );
#endif
}

/*
QGeoRectangle(const QGeoShape &other)
*/
void QGeoRectangle_new5 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * o = new QGeoRectangle ( *PQGEOSHAPE(1) );
  _qt5xhb_returnNewObject( o, true );
#endif
}

//[1]QGeoRectangle()
//[2]QGeoRectangle(const QGeoCoordinate &center, double degreesWidth, double degreesHeight)
//[3]QGeoRectangle(const QGeoCoordinate &topLeft, const QGeoCoordinate &bottomRight)
//[4]QGeoRectangle(const QGeoRectangle &other)
//[5]QGeoRectangle(const QGeoShape &other)

HB_FUNC_STATIC( QGEORECTANGLE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGeoRectangle_new1();
  }
  else if( ISNUMPAR(3) && ISQGEOCOORDINATE(1) && ISNUM(2) && ISNUM(3) )
  {
    QGeoRectangle_new2();
  }
  else if( ISNUMPAR(2) && ISQGEOCOORDINATE(1) && ISQGEOCOORDINATE(2) )
  {
    QGeoRectangle_new3();
  }
  else if( ISNUMPAR(1) && ISQGEORECTANGLE(1) )
  {
    QGeoRectangle_new4();
  }
  else if( ISNUMPAR(1) && ISQGEOSHAPE(1) )
  {
    QGeoRectangle_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGEORECTANGLE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
void setTopLeft(const QGeoCoordinate &topLeft)
*/
HB_FUNC_STATIC( QGEORECTANGLE_SETTOPLEFT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGEOCOORDINATE(1) )
    {
#endif
      obj->setTopLeft ( *PQGEOCOORDINATE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QGeoCoordinate topLeft() const
*/
HB_FUNC_STATIC( QGEORECTANGLE_TOPLEFT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QGeoCoordinate * ptr = new QGeoCoordinate( obj->topLeft () );
      _qt5xhb_createReturnClass ( ptr, "QGEOCOORDINATE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setTopRight(const QGeoCoordinate &topRight)
*/
HB_FUNC_STATIC( QGEORECTANGLE_SETTOPRIGHT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGEOCOORDINATE(1) )
    {
#endif
      obj->setTopRight ( *PQGEOCOORDINATE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QGeoCoordinate topRight() const
*/
HB_FUNC_STATIC( QGEORECTANGLE_TOPRIGHT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QGeoCoordinate * ptr = new QGeoCoordinate( obj->topRight () );
      _qt5xhb_createReturnClass ( ptr, "QGEOCOORDINATE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setBottomLeft(const QGeoCoordinate &bottomLeft)
*/
HB_FUNC_STATIC( QGEORECTANGLE_SETBOTTOMLEFT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGEOCOORDINATE(1) )
    {
#endif
      obj->setBottomLeft ( *PQGEOCOORDINATE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QGeoCoordinate bottomLeft() const
*/
HB_FUNC_STATIC( QGEORECTANGLE_BOTTOMLEFT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QGeoCoordinate * ptr = new QGeoCoordinate( obj->bottomLeft () );
      _qt5xhb_createReturnClass ( ptr, "QGEOCOORDINATE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setBottomRight(const QGeoCoordinate &bottomRight)
*/
HB_FUNC_STATIC( QGEORECTANGLE_SETBOTTOMRIGHT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGEOCOORDINATE(1) )
    {
#endif
      obj->setBottomRight ( *PQGEOCOORDINATE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QGeoCoordinate bottomRight() const
*/
HB_FUNC_STATIC( QGEORECTANGLE_BOTTOMRIGHT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QGeoCoordinate * ptr = new QGeoCoordinate( obj->bottomRight () );
      _qt5xhb_createReturnClass ( ptr, "QGEOCOORDINATE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setCenter(const QGeoCoordinate &center)
*/
HB_FUNC_STATIC( QGEORECTANGLE_SETCENTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGEOCOORDINATE(1) )
    {
#endif
      obj->setCenter ( *PQGEOCOORDINATE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QGeoCoordinate center() const
*/
HB_FUNC_STATIC( QGEORECTANGLE_CENTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QGeoCoordinate * ptr = new QGeoCoordinate( obj->center () );
      _qt5xhb_createReturnClass ( ptr, "QGEOCOORDINATE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setWidth(double degreesWidth)
*/
HB_FUNC_STATIC( QGEORECTANGLE_SETWIDTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setWidth ( PDOUBLE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
double width() const
*/
HB_FUNC_STATIC( QGEORECTANGLE_WIDTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RDOUBLE( obj->width () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setHeight(double degreesHeight)
*/
HB_FUNC_STATIC( QGEORECTANGLE_SETHEIGHT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setHeight ( PDOUBLE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
double height() const
*/
HB_FUNC_STATIC( QGEORECTANGLE_HEIGHT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RDOUBLE( obj->height () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool contains(const QGeoCoordinate &coordinate) const
*/
void QGeoRectangle_contains1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      RBOOL( obj->contains ( *PQGEOCOORDINATE(1) ) );
  }
#endif
}

/*
bool contains(const QGeoRectangle &rectangle) const
*/
void QGeoRectangle_contains2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      RBOOL( obj->contains ( *PQGEORECTANGLE(1) ) );
  }
#endif
}

//[1]bool contains(const QGeoCoordinate &coordinate) const
//[2]bool contains(const QGeoRectangle &rectangle) const

HB_FUNC_STATIC( QGEORECTANGLE_CONTAINS )
{
  if( ISNUMPAR(1) && ISQGEOCOORDINATE(1) )
  {
    QGeoRectangle_contains1();
  }
  else if( ISNUMPAR(1) && ISQGEORECTANGLE(1) )
  {
    QGeoRectangle_contains2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool intersects(const QGeoRectangle &rectangle) const
*/
HB_FUNC_STATIC( QGEORECTANGLE_INTERSECTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGEORECTANGLE(1) )
    {
#endif
      RBOOL( obj->intersects ( *PQGEORECTANGLE(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void translate(double degreesLatitude, double degreesLongitude)
*/
HB_FUNC_STATIC( QGEORECTANGLE_TRANSLATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      obj->translate ( PDOUBLE(1), PDOUBLE(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QGeoRectangle translated(double degreesLatitude, double degreesLongitude) const
*/
HB_FUNC_STATIC( QGEORECTANGLE_TRANSLATED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      QGeoRectangle * ptr = new QGeoRectangle( obj->translated ( PDOUBLE(1), PDOUBLE(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QGEORECTANGLE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QGeoRectangle united(const QGeoRectangle &rectangle) const
*/
HB_FUNC_STATIC( QGEORECTANGLE_UNITED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGEORECTANGLE(1) )
    {
#endif
      QGeoRectangle * ptr = new QGeoRectangle( obj->united ( *PQGEORECTANGLE(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QGEORECTANGLE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

#pragma ENDDUMP
