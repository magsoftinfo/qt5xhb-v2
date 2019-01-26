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

CLASS QModbusReply INHERIT QObject

   METHOD onFinished
   METHOD onErrorOccurred

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QModbusReply
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QModbusReply>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QModbusReply>
#endif
#endif

/*
QModbusReply(ReplyType type, int serverAddress, QObject *parent = nullptr)
*/

/*
ReplyType type() const
*/

/*
int serverAddress() const
*/

/*
bool isFinished() const
*/

/*
QModbusDataUnit result() const
*/

/*
QModbusResponse rawResult() const
*/

/*
QString errorString() const
*/

/*
QModbusDevice::Error error() const
*/

/*
void setResult(const QModbusDataUnit &unit)
*/

/*
void setRawResult(const QModbusResponse &unit)
*/

/*
void setFinished(bool isFinished)
*/

/*
void setError(QModbusDevice::Error error, const QString &errorText)
*/

/*
void finished()
*/
HB_FUNC_STATIC( QMODBUSREPLY_ONFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusReply * sender = (QModbusReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "finished()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QModbusReply::finished, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "finished()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QMODBUSREPLY" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "finished()", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else
    {
      hb_retl( false );
    }
  }
  else if( hb_pcount() == 0 )
  {
    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "finished()" );

      QObject::disconnect( Signals2_get_connection( sender, "finished()" ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
#endif
}

/*
void errorOccurred( QModbusDevice::Error error )
*/
HB_FUNC_STATIC( QMODBUSREPLY_ONERROROCCURRED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusReply * sender = (QModbusReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "errorOccurred(QModbusDevice::Error)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QModbusReply::errorOccurred, 
                                                              [sender]
                                                              (QModbusDevice::Error arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "errorOccurred(QModbusDevice::Error)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QMODBUSREPLY" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "errorOccurred(QModbusDevice::Error)", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else
    {
      hb_retl( false );
    }
  }
  else if( hb_pcount() == 0 )
  {
    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "errorOccurred(QModbusDevice::Error)" );

      QObject::disconnect( Signals2_get_connection( sender, "errorOccurred(QModbusDevice::Error)" ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
#endif
}

#pragma ENDDUMP
