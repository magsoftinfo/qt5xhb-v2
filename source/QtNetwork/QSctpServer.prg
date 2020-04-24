/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSCTPSOCKET
#endif

CLASS QSctpServer INHERIT QTcpServer

   METHOD new
   METHOD delete
   METHOD setMaximumChannelCount
   METHOD maximumChannelCount
   METHOD nextPendingDatagramConnection

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSctpServer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtNetwork/QSctpServer>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtNetwork/QSctpServer>
#endif
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#if !defined(QT_NO_SCTP)
#include <QtNetwork/QSctpSocket>
#endif
#endif

/*
explicit QSctpServer(QObject *parent = nullptr)
*/
HB_FUNC_STATIC( QSCTPSERVER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#if !defined(QT_NO_SCTP)
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    auto obj = new QSctpServer( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
#endif
}

/*
virtual ~QSctpServer()
*/
HB_FUNC_STATIC( QSCTPSERVER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#if !defined(QT_NO_SCTP)
  auto obj = (QSctpServer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Events_disconnect_all_events( obj, true );
    Signals4_disconnect_all_signals( obj, true );
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
#endif
}

/*
void setMaximumChannelCount(int count)
*/
HB_FUNC_STATIC( QSCTPSERVER_SETMAXIMUMCHANNELCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#if !defined(QT_NO_SCTP)
  auto obj = (QSctpServer *) Qt5xHb::itemGetPtrStackSelfItem();

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
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
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
HB_FUNC_STATIC( QSCTPSERVER_MAXIMUMCHANNELCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#if !defined(QT_NO_SCTP)
  auto obj = (QSctpServer *) Qt5xHb::itemGetPtrStackSelfItem();

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
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
#endif
}

/*
QSctpSocket *nextPendingDatagramConnection()
*/
HB_FUNC_STATIC( QSCTPSERVER_NEXTPENDINGDATAGRAMCONNECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#if !defined(QT_NO_SCTP)
  auto obj = (QSctpServer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSctpSocket * ptr = obj->nextPendingDatagramConnection();
      Qt5xHb::createReturnQObjectClass( ptr, "QSCTPSOCKET" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
#endif
}

/*
void incomingConnection(qintptr handle) Q_DECL_OVERRIDE [protected]
*/

#pragma ENDDUMP
