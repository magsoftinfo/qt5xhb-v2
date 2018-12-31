/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QVideoDeviceSelectorControl INHERIT QMediaControl

   METHOD delete
   METHOD defaultDevice
   METHOD deviceCount
   METHOD deviceDescription
   METHOD deviceName
   METHOD selectedDevice
   METHOD setSelectedDevice

   METHOD onDevicesChanged
   METHOD onSelectedDeviceChanged1
   METHOD onSelectedDeviceChanged2

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVideoDeviceSelectorControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QVideoDeviceSelectorControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QVideoDeviceSelectorControl>
#endif

/*
explicit QVideoDeviceSelectorControl(QObject *parent = Q_NULLPTR) [protected]
*/

/*
virtual ~QVideoDeviceSelectorControl()
*/
HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_DELETE )
{
  QVideoDeviceSelectorControl * obj = (QVideoDeviceSelectorControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual int defaultDevice() const = 0
*/
HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_DEFAULTDEVICE )
{
  QVideoDeviceSelectorControl * obj = (QVideoDeviceSelectorControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->defaultDevice () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual int deviceCount() const = 0
*/
HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_DEVICECOUNT )
{
  QVideoDeviceSelectorControl * obj = (QVideoDeviceSelectorControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->deviceCount () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual QString deviceDescription(int index) const = 0
*/
HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_DEVICEDESCRIPTION )
{
  QVideoDeviceSelectorControl * obj = (QVideoDeviceSelectorControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RQSTRING( obj->deviceDescription ( PINT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual QString deviceName(int index) const = 0
*/
HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_DEVICENAME )
{
  QVideoDeviceSelectorControl * obj = (QVideoDeviceSelectorControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RQSTRING( obj->deviceName ( PINT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual int selectedDevice() const = 0
*/
HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_SELECTEDDEVICE )
{
  QVideoDeviceSelectorControl * obj = (QVideoDeviceSelectorControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->selectedDevice () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual void setSelectedDevice(int index) = 0
*/
HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_SETSELECTEDDEVICE )
{
  QVideoDeviceSelectorControl * obj = (QVideoDeviceSelectorControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setSelectedDevice ( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void devicesChanged()
*/
HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_ONDEVICESCHANGED )
{
  if( hb_pcount() == 1 )
  {
    QVideoDeviceSelectorControl * sender = (QVideoDeviceSelectorControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "devicesChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVideoDeviceSelectorControl::devicesChanged, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "devicesChanged()" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QVIDEODEVICESELECTORCONTROL" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "devicesChanged()", connection );

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
    QVideoDeviceSelectorControl * sender = (QVideoDeviceSelectorControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "devicesChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "devicesChanged()" ) );

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

/*
void selectedDeviceChanged( int index )
*/
HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_ONSELECTEDDEVICECHANGED1 )
{
  if( hb_pcount() == 1 )
  {
    QVideoDeviceSelectorControl * sender = (QVideoDeviceSelectorControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "selectedDeviceChanged(int)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              QOverload<int>::of(&QVideoDeviceSelectorControl::selectedDeviceChanged), 
                                                              [sender]
                                                              (int arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "selectedDeviceChanged(int)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QVIDEODEVICESELECTORCONTROL" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "selectedDeviceChanged(int)", connection );

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
    QVideoDeviceSelectorControl * sender = (QVideoDeviceSelectorControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "selectedDeviceChanged(int)" );

      QObject::disconnect( Signals2_get_connection( sender, "selectedDeviceChanged(int)" ) );

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

/*
void selectedDeviceChanged( const QString & name )
*/
HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_ONSELECTEDDEVICECHANGED2 )
{
  if( hb_pcount() == 1 )
  {
    QVideoDeviceSelectorControl * sender = (QVideoDeviceSelectorControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "selectedDeviceChanged(QString)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              QOverload<const QString &>::of(&QVideoDeviceSelectorControl::selectedDeviceChanged), 
                                                              [sender]
                                                              (const QString & arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "selectedDeviceChanged(QString)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QVIDEODEVICESELECTORCONTROL" );
            PHB_ITEM pArg1 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg1) );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "selectedDeviceChanged(QString)", connection );

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
    QVideoDeviceSelectorControl * sender = (QVideoDeviceSelectorControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "selectedDeviceChanged(QString)" );

      QObject::disconnect( Signals2_get_connection( sender, "selectedDeviceChanged(QString)" ) );

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

#pragma ENDDUMP
