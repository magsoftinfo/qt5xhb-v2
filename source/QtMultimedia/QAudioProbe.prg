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

CLASS QAudioProbe INHERIT QObject

   METHOD new
   METHOD delete
   METHOD isActive
   METHOD setSource

   METHOD onAudioBufferProbed
   METHOD onFlush

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAudioProbe
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QAudioProbe>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QAudioProbe>
#endif

/*
QAudioProbe( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QAUDIOPROBE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    auto obj = new QAudioProbe( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QAudioProbe()
*/
HB_FUNC_STATIC( QAUDIOPROBE_DELETE )
{
  auto obj = (QAudioProbe *) Qt5xHb::itemGetPtrStackSelfItem();

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
bool isActive() const
*/
HB_FUNC_STATIC( QAUDIOPROBE_ISACTIVE )
{
  auto obj = (QAudioProbe *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isActive() );
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
bool setSource( QMediaObject * source )
*/
void QAudioProbe_setSource1()
{
  auto obj = (QAudioProbe *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RBOOL( obj->setSource( PQMEDIAOBJECT(1) ) );
  }
}

/*
bool setSource( QMediaRecorder * source )
*/
void QAudioProbe_setSource2()
{
  auto obj = (QAudioProbe *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RBOOL( obj->setSource( PQMEDIARECORDER(1) ) );
  }
}

/*
[1]bool setSource(QMediaObject * source)
[2]bool setSource(QMediaRecorder * mediaRecorder)
*/

HB_FUNC_STATIC( QAUDIOPROBE_SETSOURCE )
{
  if( ISNUMPAR(1) && ISQMEDIAOBJECT(1) )
  {
    QAudioProbe_setSource1();
  }
  else if( ISNUMPAR(1) && ISQMEDIARECORDER(1) )
  {
    QAudioProbe_setSource2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void audioBufferProbed( const QAudioBuffer & buffer )
*/
HB_FUNC_STATIC( QAUDIOPROBE_ONAUDIOBUFFERPROBED )
{
  auto sender = (QAudioProbe *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("audioBufferProbed(QAudioBuffer)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAudioProbe::audioBufferProbed, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QAudioBuffer & arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QAUDIOPROBE" );
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_object( (void *) &arg1, "QAUDIOBUFFER" );
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

/*
void flush()
*/
HB_FUNC_STATIC( QAUDIOPROBE_ONFLUSH )
{
  auto sender = (QAudioProbe *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("flush()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAudioProbe::flush, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QAUDIOPROBE" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
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
