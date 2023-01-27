/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QStyleOptionRubberBand INHERIT QStyleOption

   METHOD new
   METHOD shape
   METHOD setShape
   METHOD opaque
   METHOD setOpaque

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionRubberBand
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QStyleOptionRubberBand>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QStyleOptionRubberBand>
#endif

HB_FUNC_STATIC( QSTYLEOPTIONRUBBERBAND_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QStyleOptionRubberBand()
    */
    auto obj = new QStyleOptionRubberBand();
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONRUBBERBAND(1) )
  {
    /*
    QStyleOptionRubberBand( const QStyleOptionRubberBand & other )
    */
    auto obj = new QStyleOptionRubberBand( *PQSTYLEOPTIONRUBBERBAND(1) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QRubberBand::Shape shape
*/
HB_FUNC_STATIC( QSTYLEOPTIONRUBBERBAND_SHAPE )
{
  auto obj = static_cast<QStyleOptionRubberBand*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->shape );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONRUBBERBAND_SETSHAPE )
{
  auto obj = static_cast<QStyleOptionRubberBand*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
      obj->shape = static_cast<QRubberBand::Shape>( hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool opaque
*/
HB_FUNC_STATIC( QSTYLEOPTIONRUBBERBAND_OPAQUE )
{
  auto obj = static_cast<QStyleOptionRubberBand*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->opaque );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONRUBBERBAND_SETOPAQUE )
{
  auto obj = static_cast<QStyleOptionRubberBand*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
      obj->opaque = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
