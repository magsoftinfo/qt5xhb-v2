/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTMESSAGEHANDLER
REQUEST QABSTRACTURIRESOLVER
REQUEST QNETWORKACCESSMANAGER
REQUEST QURL
REQUEST QXMLNAMEPOOL
#endif

CLASS QXmlSchema

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD documentUri
   METHOD isValid
   METHOD load
   METHOD messageHandler
   METHOD namePool
   METHOD networkAccessManager
   METHOD setMessageHandler
   METHOD setNetworkAccessManager
   METHOD setUriResolver
   METHOD uriResolver

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QXmlSchema
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtXmlPatterns/QXmlSchema>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtXmlPatterns/QXmlSchema>
#endif

#include <QtNetwork/QNetworkAccessManager>
#include <QtXmlPatterns/QAbstractMessageHandler>
#include <QtXmlPatterns/QAbstractUriResolver>

/*
QXmlSchema()
*/
void QXmlSchema_new1()
{
  auto obj = new QXmlSchema();
  Qt5xHb::returnNewObject( obj, true );
}

/*
QXmlSchema( const QXmlSchema & other )
*/
void QXmlSchema_new2()
{
  auto obj = new QXmlSchema( *PQXMLSCHEMA( 1 ) );
  Qt5xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QXMLSCHEMA_NEW )
{
  if( ISNUMPAR( 0 ) )
  {
    QXmlSchema_new1();
  }
  else if( ISNUMPAR( 1 ) && ISQXMLSCHEMA( 1 ) )
  {
    QXmlSchema_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QXMLSCHEMA_DELETE )
{
  auto obj = static_cast< QXmlSchema * >( Qt5xHb::itemGetPtrStackSelfItem() );

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
QUrl documentUri() const
*/
HB_FUNC_STATIC( QXMLSCHEMA_DOCUMENTURI )
{
  auto obj = static_cast< QXmlSchema * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      auto ptr = new QUrl( obj->documentUri() );
      Qt5xHb::createReturnClass( ptr, "QURL", true );
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
bool isValid() const
*/
HB_FUNC_STATIC( QXMLSCHEMA_ISVALID )
{
  auto obj = static_cast< QXmlSchema * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isValid() );
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
bool load( const QUrl & source )
*/
void QXmlSchema_load1()
{
  auto obj = static_cast< QXmlSchema * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
    RBOOL( obj->load( *PQURL( 1 ) ) );
  }
}

/*
bool load( QIODevice * source, const QUrl & documentUri = QUrl() )
*/
void QXmlSchema_load2()
{
  auto obj = static_cast< QXmlSchema * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
    RBOOL( obj->load( PQIODEVICE( 1 ), HB_ISNIL( 2 ) ? QUrl() : *static_cast< QUrl * >( Qt5xHb::itemGetPtr( 2 ) ) ) );
  }
}

/*
bool load( const QByteArray & data, const QUrl & documentUri = QUrl() )
*/
void QXmlSchema_load3()
{
  auto obj = static_cast< QXmlSchema * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
    RBOOL( obj->load( *PQBYTEARRAY( 1 ), HB_ISNIL( 2 ) ? QUrl() : *static_cast< QUrl * >( Qt5xHb::itemGetPtr( 2 ) ) ) );
  }
}

HB_FUNC_STATIC( QXMLSCHEMA_LOAD )
{
  if( ISNUMPAR( 1 ) && ISQURL( 1 ) )
  {
    QXmlSchema_load1();
  }
  else if( ISBETWEEN( 1, 2 ) && ISQIODEVICE( 1 ) && ( ISQURL( 2 ) || HB_ISNIL( 2 ) ) )
  {
    QXmlSchema_load2();
  }
  else if( ISBETWEEN( 1, 2 ) && ISQBYTEARRAY( 1 ) && ( ISQURL( 2 ) || HB_ISNIL( 2 ) ) )
  {
    QXmlSchema_load3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAbstractMessageHandler * messageHandler() const
*/
HB_FUNC_STATIC( QXMLSCHEMA_MESSAGEHANDLER )
{
  auto obj = static_cast< QXmlSchema * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QAbstractMessageHandler * ptr = obj->messageHandler();
      Qt5xHb::createReturnQObjectClass( ptr, "QABSTRACTMESSAGEHANDLER" );
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
QXmlNamePool namePool() const
*/
HB_FUNC_STATIC( QXMLSCHEMA_NAMEPOOL )
{
  auto obj = static_cast< QXmlSchema * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      auto ptr = new QXmlNamePool( obj->namePool() );
      Qt5xHb::createReturnClass( ptr, "QXMLNAMEPOOL", true );
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
QNetworkAccessManager * networkAccessManager() const
*/
HB_FUNC_STATIC( QXMLSCHEMA_NETWORKACCESSMANAGER )
{
  auto obj = static_cast< QXmlSchema * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QNetworkAccessManager * ptr = obj->networkAccessManager();
      Qt5xHb::createReturnQObjectClass( ptr, "QNETWORKACCESSMANAGER" );
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
void setMessageHandler( QAbstractMessageHandler * handler )
*/
HB_FUNC_STATIC( QXMLSCHEMA_SETMESSAGEHANDLER )
{
  auto obj = static_cast< QXmlSchema * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQABSTRACTMESSAGEHANDLER( 1 ) )
    {
#endif
      obj->setMessageHandler( PQABSTRACTMESSAGEHANDLER( 1 ) );
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
void setNetworkAccessManager( QNetworkAccessManager * manager )
*/
HB_FUNC_STATIC( QXMLSCHEMA_SETNETWORKACCESSMANAGER )
{
  auto obj = static_cast< QXmlSchema * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQNETWORKACCESSMANAGER( 1 ) )
    {
#endif
      obj->setNetworkAccessManager( PQNETWORKACCESSMANAGER( 1 ) );
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
void setUriResolver( const QAbstractUriResolver * resolver )
*/
HB_FUNC_STATIC( QXMLSCHEMA_SETURIRESOLVER )
{
  auto obj = static_cast< QXmlSchema * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQABSTRACTURIRESOLVER( 1 ) )
    {
#endif
      obj->setUriResolver( PQABSTRACTURIRESOLVER( 1 ) );
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
const QAbstractUriResolver * uriResolver() const
*/
HB_FUNC_STATIC( QXMLSCHEMA_URIRESOLVER )
{
  auto obj = static_cast< QXmlSchema * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      const QAbstractUriResolver * ptr = obj->uriResolver();
      Qt5xHb::createReturnQObjectClass( ptr, "QABSTRACTURIRESOLVER" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

HB_FUNC_STATIC( QXMLSCHEMA_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT( 1 ) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, static_cast< void * >( hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 ) ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( nullptr, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER( 1 ) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, static_cast< void * >( hb_itemGetPtr( hb_param( 1, HB_IT_POINTER ) ) ) );
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

HB_FUNC_STATIC( QXMLSCHEMA_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QXMLSCHEMA_NEWFROM );
}

HB_FUNC_STATIC( QXMLSCHEMA_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QXMLSCHEMA_NEWFROM );
}

HB_FUNC_STATIC( QXMLSCHEMA_SELFDESTRUCTION )
{
  hb_retl( static_cast< bool >( hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) ) );
}

HB_FUNC_STATIC( QXMLSCHEMA_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG( 1 ) )
  {
    PHB_ITEM des = hb_itemPutL( nullptr, hb_parl( 1 ) );
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
