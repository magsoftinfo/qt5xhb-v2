/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QANDROIDBINDER
REQUEST QANDROIDJNIOBJECT
REQUEST QBYTEARRAY
REQUEST QVARIANT
#endif

CLASS QAndroidParcel

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD writeData
   METHOD writeVariant
   METHOD writeBinder
   METHOD writeFileDescriptor
   METHOD readData
   METHOD readVariant
   METHOD readBinder
   METHOD readFileDescriptor
   METHOD handle

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAndroidParcel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtAndroidExtras/QAndroidParcel>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtAndroidExtras/QAndroidParcel>
#endif
#endif

/*
QAndroidParcel()
*/
void QAndroidParcel_new1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = new QAndroidParcel();
  Qt5xHb::returnNewObject( obj, true );
#endif
}

/*
QAndroidParcel( const QAndroidJniObject & parcel )
*/
void QAndroidParcel_new2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = new QAndroidParcel( *PQANDROIDJNIOBJECT(1) );
  Qt5xHb::returnNewObject( obj, true );
#endif
}

HB_FUNC_STATIC( QANDROIDPARCEL_NEW )
{
  if( ISNUMPAR(0) )
  {
    QAndroidParcel_new1();
  }
  else if( ISNUMPAR(1) && ISQANDROIDJNIOBJECT(1) )
  {
    QAndroidParcel_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~QAndroidParcel()
*/
HB_FUNC_STATIC( QANDROIDPARCEL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = (QAndroidParcel *) Qt5xHb::itemGetPtrStackSelfItem();

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
void writeData( const QByteArray & data ) const
*/
HB_FUNC_STATIC( QANDROIDPARCEL_WRITEDATA )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = (QAndroidParcel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
    {
#endif
      obj->writeData( *PQBYTEARRAY(1) );
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
void writeVariant( const QVariant & value ) const
*/
HB_FUNC_STATIC( QANDROIDPARCEL_WRITEVARIANT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = (QAndroidParcel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVARIANT(1) )
    {
#endif
      obj->writeVariant( *PQVARIANT(1) );
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
void writeBinder( const QAndroidBinder & binder ) const
*/
HB_FUNC_STATIC( QANDROIDPARCEL_WRITEBINDER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = (QAndroidParcel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQANDROIDBINDER(1) )
    {
#endif
      obj->writeBinder( *PQANDROIDBINDER(1) );
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
void writeFileDescriptor( int fd ) const
*/
HB_FUNC_STATIC( QANDROIDPARCEL_WRITEFILEDESCRIPTOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = (QAndroidParcel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->writeFileDescriptor( PINT(1) );
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
QByteArray readData() const
*/
HB_FUNC_STATIC( QANDROIDPARCEL_READDATA )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = (QAndroidParcel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QByteArray( obj->readData() );
      Qt5xHb::createReturnClass( ptr, "QBYTEARRAY", true );
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
QVariant readVariant() const
*/
HB_FUNC_STATIC( QANDROIDPARCEL_READVARIANT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = (QAndroidParcel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QVariant( obj->readVariant() );
      Qt5xHb::createReturnClass( ptr, "QVARIANT", true );
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
QAndroidBinder readBinder() const
*/
HB_FUNC_STATIC( QANDROIDPARCEL_READBINDER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = (QAndroidParcel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QAndroidBinder( obj->readBinder() );
      Qt5xHb::createReturnClass( ptr, "QANDROIDBINDER", true );
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
int readFileDescriptor() const
*/
HB_FUNC_STATIC( QANDROIDPARCEL_READFILEDESCRIPTOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = (QAndroidParcel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->readFileDescriptor() );
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
QAndroidJniObject handle() const
*/
HB_FUNC_STATIC( QANDROIDPARCEL_HANDLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = (QAndroidParcel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QAndroidJniObject( obj->handle() );
      Qt5xHb::createReturnClass( ptr, "QANDROIDJNIOBJECT", true );
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

HB_FUNC_STATIC( QANDROIDPARCEL_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( nullptr, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
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

HB_FUNC_STATIC( QANDROIDPARCEL_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QANDROIDPARCEL_NEWFROM );
}

HB_FUNC_STATIC( QANDROIDPARCEL_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QANDROIDPARCEL_NEWFROM );
}

HB_FUNC_STATIC( QANDROIDPARCEL_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QANDROIDPARCEL_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
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
