/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
#endif

CLASS QGraphicsOpacityEffect INHERIT QGraphicsEffect

   METHOD new
   METHOD delete
   METHOD opacity
   METHOD opacityMask
   METHOD setOpacity
   METHOD setOpacityMask

   METHOD onOpacityChanged
   METHOD onOpacityMaskChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsOpacityEffect
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QGraphicsOpacityEffect>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QGraphicsOpacityEffect>
#endif

/*
QGraphicsOpacityEffect ( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    auto obj = new QGraphicsOpacityEffect ( OPQOBJECT(1,nullptr) );
    _qt5xhb_returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_DELETE )
{
  QGraphicsOpacityEffect * obj = (QGraphicsOpacityEffect *) _qt5xhb_itemGetPtrStackSelfItem();

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
}

/*
qreal opacity () const
*/
HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_OPACITY )
{
  QGraphicsOpacityEffect * obj = (QGraphicsOpacityEffect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->opacity () );
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
QBrush opacityMask () const
*/
HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_OPACITYMASK )
{
  QGraphicsOpacityEffect * obj = (QGraphicsOpacityEffect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBrush * ptr = new QBrush( obj->opacityMask () );
      _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
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
void setOpacity ( qreal opacity )
*/
HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_SETOPACITY )
{
  QGraphicsOpacityEffect * obj = (QGraphicsOpacityEffect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setOpacity ( PQREAL(1) );
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
void setOpacityMask ( const QBrush & mask )
*/
HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_SETOPACITYMASK )
{
  QGraphicsOpacityEffect * obj = (QGraphicsOpacityEffect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
#endif
      obj->setOpacityMask ( *PQBRUSH(1) );
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
void opacityChanged( qreal opacity )
*/
HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_ONOPACITYCHANGED )
{
  QGraphicsOpacityEffect * sender = (QGraphicsOpacityEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("opacityChanged(qreal)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QGraphicsOpacityEffect::opacityChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (qreal arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QGRAPHICSOPACITYEFFECT" );
            PHB_ITEM pArg1 = hb_itemPutND( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals4_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals4_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals4_get_connection( sender, indexOfSignal ) );

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
void opacityMaskChanged( const QBrush & mask )
*/
HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_ONOPACITYMASKCHANGED )
{
  QGraphicsOpacityEffect * sender = (QGraphicsOpacityEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("opacityMaskChanged(QBrush)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QGraphicsOpacityEffect::opacityMaskChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QBrush & arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QGRAPHICSOPACITYEFFECT" );
            PHB_ITEM pArg1 = Signals4_return_object( (void *) &arg1, "QBRUSH" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals4_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals4_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals4_get_connection( sender, indexOfSignal ) );

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
