/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QSensorGesture INHERIT QObject

   METHOD new
   METHOD delete
   METHOD isActive
   METHOD validIds
   METHOD invalidIds
   METHOD gestureSignals
   METHOD startDetection
   METHOD stopDetection

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSensorGesture
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSensorGesture>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals3.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSensorGesture>
#endif
#endif

/*
QSensorGesture(const QStringList &ids, QObject *parent = nullptr)
*/
HB_FUNC_STATIC( QSENSORGESTURE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( ISBETWEEN(1,2) && ISARRAY(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QSensorGesture * o = new QSensorGesture ( PQSTRINGLIST(1), OPQOBJECT(2,nullptr) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QSENSORGESTURE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGesture * obj = (QSensorGesture *) _qt5xhb_itemGetPtrStackSelfItem();

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
bool isActive()
*/
HB_FUNC_STATIC( QSENSORGESTURE_ISACTIVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGesture * obj = (QSensorGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isActive () );
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
QStringList validIds() const
*/
HB_FUNC_STATIC( QSENSORGESTURE_VALIDIDS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGesture * obj = (QSensorGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->validIds () );
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
QStringList invalidIds() const
*/
HB_FUNC_STATIC( QSENSORGESTURE_INVALIDIDS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGesture * obj = (QSensorGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->invalidIds () );
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
QStringList gestureSignals() const
*/
HB_FUNC_STATIC( QSENSORGESTURE_GESTURESIGNALS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGesture * obj = (QSensorGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->gestureSignals () );
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
void startDetection()
*/
HB_FUNC_STATIC( QSENSORGESTURE_STARTDETECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGesture * obj = (QSensorGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->startDetection ();
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
void stopDetection()
*/
HB_FUNC_STATIC( QSENSORGESTURE_STOPDETECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGesture * obj = (QSensorGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->stopDetection ();
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
void detected( QString s )
*/

#pragma ENDDUMP
