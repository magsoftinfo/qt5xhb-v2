/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QColorSpace

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD primaries
   METHOD transferFunction
   METHOD gamma
   METHOD setTransferFunction
   METHOD withTransferFunction
   METHOD setPrimaries
   METHOD isValid
   METHOD fromIccProfile
   METHOD iccProfile

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QColorSpace
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
#include <QtGui/QColorSpace>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
#include <QtGui/QColorSpace>
#endif
#endif

HB_FUNC_STATIC( QCOLORSPACE_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QColorSpace()
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
    auto obj = new QColorSpace();
    Qt5xHb::returnNewObject( obj, true );
#endif

  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    QColorSpace( QColorSpace::NamedColorSpace namedColorSpace )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
    auto obj = new QColorSpace( static_cast<QColorSpace::NamedColorSpace>( hb_parni(1) ) );
    Qt5xHb::returnNewObject( obj, true );
#endif

  }
  else if( ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISNUM(2) && ( HB_ISNUM(3) || HB_ISNIL(3) )
  {
    /*
    QColorSpace( QColorSpace::Primaries primaries, QColorSpace::TransferFunction fun, float gamma = 0.0f )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
    auto obj = new QColorSpace( static_cast<QColorSpace::Primaries>( hb_parni(1) ), static_cast<QColorSpace::TransferFunction>( hb_parni(2) ), OPFLOAT( 3, 0.0f ) );
    Qt5xHb::returnNewObject( obj, true );
#endif

  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    /*
    QColorSpace( QColorSpace::Primaries primaries, float gamma )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
    auto obj = new QColorSpace( static_cast<QColorSpace::Primaries>( hb_parni(1) ), PFLOAT(2) );
    Qt5xHb::returnNewObject( obj, true );
#endif

  }
  else if( ISBETWEEN(5, 6) && ISQPOINTF(1) && ISQPOINTF(2) && ISQPOINTF(3) && ISQPOINTF(4) && HB_ISNUM(5) && ( HB_ISNUM(6) || HB_ISNIL(6) ) )
  {
    /*
    QColorSpace( const QPointF & whitePoint, const QPointF & redPoint, const QPointF & greenPoint, const QPointF & bluePoint, QColorSpace::TransferFunction fun, float gamma = 0.0f )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
    auto obj = new QColorSpace( *PQPOINTF(1), *PQPOINTF(2), *PQPOINTF(3), *PQPOINTF(4), static_cast<QColorSpace::TransferFunction>( hb_parni(5) ), OPFLOAT( 6, 0.0f ) );
    Qt5xHb::returnNewObject( obj, true );
#endif

  }
  else if( ISNUMPAR(1) && ISQCOLORSPACE(1) )
  {
    /*
    QColorSpace( const QColorSpace & colorSpace )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
    auto obj = new QColorSpace( *PQCOLORSPACE(1) );
    Qt5xHb::returnNewObject( obj, true );
#endif

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QColorSpace()
*/
HB_FUNC_STATIC( QCOLORSPACE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = static_cast<QColorSpace*>(Qt5xHb::itemGetPtrStackSelfItem());

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
#endif
}

/*
void swap( QColorSpace & colorSpace ) noexcept
*/
HB_FUNC_STATIC( QCOLORSPACE_SWAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = static_cast<QColorSpace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCOLORSPACE(1) )
    {
#endif
      obj->swap( *PQCOLORSPACE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QColorSpace::Primaries primaries() const noexcept
*/
HB_FUNC_STATIC( QCOLORSPACE_PRIMARIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = static_cast<QColorSpace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->primaries() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QColorSpace::TransferFunction transferFunction() const noexcept
*/
HB_FUNC_STATIC( QCOLORSPACE_TRANSFERFUNCTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = static_cast<QColorSpace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->transferFunction() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
float gamma() const noexcept
*/
HB_FUNC_STATIC( QCOLORSPACE_GAMMA )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = static_cast<QColorSpace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->gamma() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setTransferFunction( QColorSpace::TransferFunction transferFunction, float gamma = 0.0f )
*/
HB_FUNC_STATIC( QCOLORSPACE_SETTRANSFERFUNCTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = static_cast<QColorSpace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && HB_ISNUM(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
    {
#endif
      obj->setTransferFunction( static_cast<QColorSpace::TransferFunction>( hb_parni(1) ), OPFLOAT( 2, 0.0f ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QColorSpace withTransferFunction( QColorSpace::TransferFunction transferFunction, float gamma = 0.0f ) const
*/
HB_FUNC_STATIC( QCOLORSPACE_WITHTRANSFERFUNCTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = static_cast<QColorSpace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && HB_ISNUM(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
    {
#endif
      auto ptr = new QColorSpace( obj->withTransferFunction( static_cast<QColorSpace::TransferFunction>( hb_parni(1) ), OPFLOAT( 2, 0.0f ) ) );
      Qt5xHb::createReturnClass(ptr, "QCOLORSPACE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

HB_FUNC_STATIC( QCOLORSPACE_SETPRIMARIES )
{
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    void setPrimaries( QColorSpace::Primaries primariesId )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
    auto obj = static_cast<QColorSpace*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      obj->setPrimaries( static_cast<QColorSpace::Primaries>( hb_parni(1) ) );
    }

    hb_itemReturn(hb_stackSelfItem());
#endif

  }
  else if( ISNUMPAR(4) && ISQPOINTF(1) && ISQPOINTF(2) && ISQPOINTF(3) && ISQPOINTF(4) )
  {
    /*
    void setPrimaries( const QPointF & whitePoint, const QPointF & redPoint, const QPointF & greenPoint, const QPointF & bluePoint )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
    auto obj = static_cast<QColorSpace*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      obj->setPrimaries( *PQPOINTF(1), *PQPOINTF(2), *PQPOINTF(3), *PQPOINTF(4) );
    }

    hb_itemReturn(hb_stackSelfItem());
#endif

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool isValid() const noexcept
*/
HB_FUNC_STATIC( QCOLORSPACE_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = static_cast<QColorSpace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
static QColorSpace fromIccProfile( const QByteArray & iccProfile )
*/
HB_FUNC_STATIC( QCOLORSPACE_FROMICCPROFILE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
#endif
    auto ptr = new QColorSpace( QColorSpace::fromIccProfile( *PQBYTEARRAY(1) ) );
    Qt5xHb::createReturnClass(ptr, "QCOLORSPACE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
QByteArray iccProfile() const
*/
HB_FUNC_STATIC( QCOLORSPACE_ICCPROFILE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = static_cast<QColorSpace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QByteArray( obj->iccProfile() );
      Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

HB_FUNC_STATIC( QCOLORSPACE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QCOLORSPACE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QCOLORSPACE_NEWFROM );
}

HB_FUNC_STATIC( QCOLORSPACE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QCOLORSPACE_NEWFROM );
}

HB_FUNC_STATIC( QCOLORSPACE_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QCOLORSPACE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(nullptr, hb_parl(1));
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
