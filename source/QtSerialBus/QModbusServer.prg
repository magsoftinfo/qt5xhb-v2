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

CLASS QModbusServer INHERIT QModbusDevice

   METHOD delete

   METHOD onDataWritten

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QModbusServer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QModbusServer>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QModbusServer>
#endif
#endif

/*
explicit QModbusServer(QObject *parent = nullptr)
*/
/*
QModbusServer(QModbusServerPrivate &dd, QObject *parent = nullptr) [protected]
*/

/*
~QModbusServer()
*/
HB_FUNC_STATIC( QMODBUSSERVER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusServer * obj = (QModbusServer *) _qt5xhb_itemGetPtrStackSelfItem();

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
int serverAddress() const
*/

/*
void setServerAddress(int serverAddress)
*/

/*
virtual bool setMap(const QModbusDataUnitMap &map)
*/

/*
virtual bool processesBroadcast() const
*/

/*
virtual QVariant value(int option) const
*/

/*
virtual bool setValue(int option, const QVariant &value)
*/

/*
bool data(QModbusDataUnit *newData) const
*/

/*
bool setData(const QModbusDataUnit &unit)
*/

/*
bool setData(QModbusDataUnit::RegisterType table, quint16 address, quint16 data)
*/

/*
bool data(QModbusDataUnit::RegisterType table, quint16 address, quint16 *data) const
*/

/*
virtual bool writeData(const QModbusDataUnit &unit) [protected]
*/

/*
virtual bool readData(QModbusDataUnit *newData) const [protected]
*/

/*
virtual QModbusResponse processRequest(const QModbusPdu &request) [protected]
*/

/*
virtual QModbusResponse processPrivateRequest(const QModbusPdu &request) [protected]
*/

/*
void dataWritten( QModbusDataUnit::RegisterType table, int address, int size )
*/
HB_FUNC_STATIC( QMODBUSSERVER_ONDATAWRITTEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusServer * sender = (QModbusServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "dataWritten(QModbusDataUnit::RegisterType,int,int)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QModbusServer::dataWritten, 
                                                              [sender]
                                                              (QModbusDataUnit::RegisterType arg1, int arg2, int arg3) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "dataWritten(QModbusDataUnit::RegisterType,int,int)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QMODBUSSERVER" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            PHB_ITEM pArg2 = hb_itemPutNI( NULL, arg2 );
            PHB_ITEM pArg3 = hb_itemPutNI( NULL, arg3 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 4, pSender, pArg1, pArg2, pArg3 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
            hb_itemRelease( pArg3 );
          }

        });

        Signals2_store_connection( sender, "dataWritten(QModbusDataUnit::RegisterType,int,int)", connection );

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
      Signals2_disconnection( sender, "dataWritten(QModbusDataUnit::RegisterType,int,int)" );

      QObject::disconnect( Signals2_get_connection( sender, "dataWritten(QModbusDataUnit::RegisterType,int,int)" ) );

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
