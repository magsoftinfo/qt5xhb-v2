/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QBluetoothUuid INHERIT QUuid

   METHOD new
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD delete
   METHOD minimumSize
   METHOD toUInt16
   METHOD toUInt32

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QBluetoothUuid
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtBluetooth/QBluetoothUuid>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtBluetooth/QBluetoothUuid>
#endif
#endif

/*
QBluetoothUuid()
*/
void QBluetoothUuid_new1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = new QBluetoothUuid();
  Qt5xHb::returnNewObject( obj, true );
#endif
}

/*
QBluetoothUuid( QBluetoothUuid::ProtocolUuid uuid )
*/
HB_FUNC_STATIC( QBLUETOOTHUUID_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = new QBluetoothUuid( (QBluetoothUuid::ProtocolUuid) hb_parni(1) );
  Qt5xHb::returnNewObject( obj, true );
#endif
}

/*
QBluetoothUuid( QBluetoothUuid::ServiceClassUuid uuid )
*/
HB_FUNC_STATIC( QBLUETOOTHUUID_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = new QBluetoothUuid( (QBluetoothUuid::ServiceClassUuid) hb_parni(1) );
  Qt5xHb::returnNewObject( obj, true );
#endif
}

/*
QBluetoothUuid( quint16 uuid )
*/
HB_FUNC_STATIC( QBLUETOOTHUUID_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = new QBluetoothUuid( PQUINT16(1) );
  Qt5xHb::returnNewObject( obj, true );
#endif
}

/*
QBluetoothUuid( quint32 uuid )
*/
HB_FUNC_STATIC( QBLUETOOTHUUID_NEW5 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = new QBluetoothUuid( PQUINT32(1) );
  Qt5xHb::returnNewObject( obj, true );
#endif
}

/*
QBluetoothUuid( const QString & uuid )
*/
void QBluetoothUuid_new7()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = new QBluetoothUuid( PQSTRING(1) );
  Qt5xHb::returnNewObject( obj, true );
#endif
}

/*
QBluetoothUuid( const QBluetoothUuid & uuid )
*/
void QBluetoothUuid_new8()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = new QBluetoothUuid( *PQBLUETOOTHUUID(1) );
  Qt5xHb::returnNewObject( obj, true );
#endif
}

/*
QBluetoothUuid( const QUuid & uuid )
*/
void QBluetoothUuid_new9()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = new QBluetoothUuid( *PQUUID(1) );
  Qt5xHb::returnNewObject( obj, true );
#endif
}

HB_FUNC_STATIC( QBLUETOOTHUUID_NEW )
{
  if( ISNUMPAR(0) )
  {
    QBluetoothUuid_new1();
  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    HB_FUNC_EXEC( QBLUETOOTHUUID_NEW2 );
  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    HB_FUNC_EXEC( QBLUETOOTHUUID_NEW3 );
  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    HB_FUNC_EXEC( QBLUETOOTHUUID_NEW4 );
  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    HB_FUNC_EXEC( QBLUETOOTHUUID_NEW5 );
  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    QBluetoothUuid_new7();
  }
  else if( ISNUMPAR(1) && ISQBLUETOOTHUUID(1) )
  {
    QBluetoothUuid_new8();
  }
  else if( ISNUMPAR(1) && ISQUUID(1) )
  {
    QBluetoothUuid_new9();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QBLUETOOTHUUID_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = (QBluetoothUuid *) Qt5xHb::itemGetPtrStackSelfItem();

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
#endif
}

/*
int minimumSize() const
*/
HB_FUNC_STATIC( QBLUETOOTHUUID_MINIMUMSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = (QBluetoothUuid *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->minimumSize() );
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
quint16 toUInt16( bool * ok = nullptr ) const
*/
HB_FUNC_STATIC( QBLUETOOTHUUID_TOUINT16 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = (QBluetoothUuid *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (HB_ISLOG(1)||HB_ISNIL(1)) )
    {
#endif
      bool par1;
      RQUINT16( obj->toUInt16( &par1 ) );
      hb_storl( par1, 1 );
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
quint32 toUInt32( bool * ok = nullptr ) const
*/
HB_FUNC_STATIC( QBLUETOOTHUUID_TOUINT32 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = (QBluetoothUuid *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (HB_ISLOG(1)||HB_ISNIL(1)) )
    {
#endif
      bool par1;
      RQUINT32( obj->toUInt32( &par1 ) );
      hb_storl( par1, 1 );
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

#pragma ENDDUMP
