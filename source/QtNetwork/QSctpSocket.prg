/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKDATAGRAM
#endif

CLASS QSctpSocket INHERIT QTcpSocket

   METHOD new
   METHOD delete
   METHOD close
   METHOD disconnectFromHost
   METHOD setMaximumChannelCount
   METHOD maximumChannelCount
   METHOD isInDatagramMode
   METHOD readDatagram
   METHOD writeDatagram

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSctpSocket
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtNetwork/QSctpSocket>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtNetwork/QSctpSocket>
#endif
#endif

/*
QSctpSocket(QObject *parent = nullptr)
*/
HB_FUNC_STATIC( QSCTPSOCKET_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#if !defined(QT_NO_SCTP)
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    auto obj = new QSctpSocket( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
#endif
}

/*
virtual ~QSctpSocket()
*/
HB_FUNC_STATIC( QSCTPSOCKET_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#if !defined(QT_NO_SCTP)
  auto obj = (QSctpSocket *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, nullptr );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
#endif
}

/*
void close() Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QSCTPSOCKET_CLOSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#if !defined(QT_NO_SCTP)
  auto obj = (QSctpSocket *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->close();
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
#endif
}

/*
void disconnectFromHost() Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QSCTPSOCKET_DISCONNECTFROMHOST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#if !defined(QT_NO_SCTP)
  auto obj = (QSctpSocket *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->disconnectFromHost();
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
#endif
}

/*
void setMaximumChannelCount(int count)
*/
HB_FUNC_STATIC( QSCTPSOCKET_SETMAXIMUMCHANNELCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#if !defined(QT_NO_SCTP)
  auto obj = (QSctpSocket *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setMaximumChannelCount( PINT(1) );
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
#endif
}

/*
int maximumChannelCount() const
*/
HB_FUNC_STATIC( QSCTPSOCKET_MAXIMUMCHANNELCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#if !defined(QT_NO_SCTP)
  auto obj = (QSctpSocket *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->maximumChannelCount() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
#endif
}

/*
bool isInDatagramMode() const
*/
HB_FUNC_STATIC( QSCTPSOCKET_ISINDATAGRAMMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#if !defined(QT_NO_SCTP)
  auto obj = (QSctpSocket *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isInDatagramMode() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
#endif
}

/*
QNetworkDatagram readDatagram()
*/
HB_FUNC_STATIC( QSCTPSOCKET_READDATAGRAM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#if !defined(QT_NO_SCTP)
  auto obj = (QSctpSocket *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QNetworkDatagram( obj->readDatagram() );
      Qt5xHb::createReturnClass( ptr, "QNETWORKDATAGRAM", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
#endif
}

/*
bool writeDatagram(const QNetworkDatagram &datagram)
*/
HB_FUNC_STATIC( QSCTPSOCKET_WRITEDATAGRAM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#if !defined(QT_NO_SCTP)
  auto obj = (QSctpSocket *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQNETWORKDATAGRAM(1) )
    {
#endif
      RBOOL( obj->writeDatagram( *PQNETWORKDATAGRAM(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
#endif
}

#pragma ENDDUMP
