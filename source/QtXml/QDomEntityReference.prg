/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QDomEntityReference INHERIT QDomNode

   METHOD new
   METHOD delete
   METHOD nodeType

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDomEntityReference
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtXml/QDomEntityReference>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtXml/QDomEntityReference>
#endif

HB_FUNC_STATIC( QDOMENTITYREFERENCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QDomEntityReference()
    */
    auto obj = new QDomEntityReference();
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISNUMPAR(1) && ISQDOMENTITYREFERENCE(1) )
  {
    /*
    QDomEntityReference( const QDomEntityReference & x )
    */
    auto obj = new QDomEntityReference( *PQDOMENTITYREFERENCE(1) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QDOMENTITYREFERENCE_DELETE )
{
  auto obj = static_cast<QDomEntityReference*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QDomNode::NodeType nodeType() const
*/
HB_FUNC_STATIC( QDOMENTITYREFERENCE_NODETYPE )
{
  auto obj = static_cast<QDomEntityReference*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->nodeType() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP
