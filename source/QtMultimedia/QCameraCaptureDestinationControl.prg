/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QCameraCaptureDestinationControl INHERIT QMediaObject

   METHOD delete
   METHOD captureDestination
   METHOD isCaptureDestinationSupported
   METHOD setCaptureDestination

   METHOD onCaptureDestinationChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCameraCaptureDestinationControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QCameraCaptureDestinationControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QCameraCaptureDestinationControl>
#endif

/*
~QCameraCaptureDestinationControl()
*/
HB_FUNC_STATIC( QCAMERACAPTUREDESTINATIONCONTROL_DELETE )
{
  auto obj = (QCameraCaptureDestinationControl *) Qt5xHb::itemGetPtrStackSelfItem();

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
}

/*
virtual QCameraImageCapture::CaptureDestinations captureDestination() const = 0
*/
HB_FUNC_STATIC( QCAMERACAPTUREDESTINATIONCONTROL_CAPTUREDESTINATION )
{
  auto obj = (QCameraCaptureDestinationControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->captureDestination() );
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
virtual bool isCaptureDestinationSupported( QCameraImageCapture::CaptureDestinations destination ) const = 0
*/
HB_FUNC_STATIC( QCAMERACAPTUREDESTINATIONCONTROL_ISCAPTUREDESTINATIONSUPPORTED )
{
  auto obj = (QCameraCaptureDestinationControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->isCaptureDestinationSupported( (QCameraImageCapture::CaptureDestinations) hb_parni(1) ) );
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
virtual void setCaptureDestination( QCameraImageCapture::CaptureDestinations destination ) = 0
*/
HB_FUNC_STATIC( QCAMERACAPTUREDESTINATIONCONTROL_SETCAPTUREDESTINATION )
{
  auto obj = (QCameraCaptureDestinationControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setCaptureDestination( (QCameraImageCapture::CaptureDestinations) hb_parni(1) );
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
void captureDestinationChanged( QCameraImageCapture::CaptureDestinations destination )
*/
HB_FUNC_STATIC( QCAMERACAPTUREDESTINATIONCONTROL_ONCAPTUREDESTINATIONCHANGED )
{
  auto sender = (QCameraCaptureDestinationControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("captureDestinationChanged(QCameraImageCapture::CaptureDestinations)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCameraCaptureDestinationControl::captureDestinationChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (QCameraImageCapture::CaptureDestinations arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QCAMERACAPTUREDESTINATIONCONTROL" );
            PHB_ITEM pArg1 = hb_itemPutNI( nullptr, (int) arg1 );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

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
