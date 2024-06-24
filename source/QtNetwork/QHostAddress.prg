/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QHostAddress

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new2
   METHOD new9
   METHOD new
   METHOD delete
   METHOD swap
   METHOD setAddress
   METHOD protocol
   METHOD toIPv4Address
   METHOD toString
   METHOD scopeId
   METHOD setScopeId
   METHOD isEqual
   METHOD isNull
   METHOD clear
   METHOD isInSubnet
   METHOD isLoopback
   METHOD isMulticast

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QHostAddress
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtNetwork/QHostAddress>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtNetwork/QHostAddress>
#endif

/*
QHostAddress( quint32 ip4Addr )
*/
HB_FUNC_STATIC( QHOSTADDRESS_NEW2 )
{
  auto obj = new QHostAddress(PQUINT32(1));
  Qt5xHb::returnNewObject(obj, true);
}

/*
QHostAddress( QHostAddress::SpecialAddress address )
*/
HB_FUNC_STATIC( QHOSTADDRESS_NEW9 )
{
  auto obj = new QHostAddress(static_cast<QHostAddress::SpecialAddress>(hb_parni(1)));
  Qt5xHb::returnNewObject(obj, true);
}

HB_FUNC_STATIC( QHOSTADDRESS_NEW )
{
  if (ISNUMPAR(0))
  {
    /*
    QHostAddress()
    */
    auto obj = new QHostAddress();
    Qt5xHb::returnNewObject(obj, true);

  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    QHostAddress( const QString & address )
    */
    auto obj = new QHostAddress(PQSTRING(1));
    Qt5xHb::returnNewObject(obj, true);

  }
  else if (ISNUMPAR(1) && ISQHOSTADDRESS(1))
  {
    /*
    QHostAddress( const QHostAddress & copy )
    */
    auto obj = new QHostAddress(*PQHOSTADDRESS(1));
    Qt5xHb::returnNewObject(obj, true);

  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    HB_FUNC_EXEC(QHOSTADDRESS_NEW9);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QHostAddress()
*/
HB_FUNC_STATIC( QHOSTADDRESS_DELETE )
{
  auto obj = static_cast<QHostAddress*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    delete obj;
    obj = nullptr;
    auto ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void swap( QHostAddress & other ) Q_DECL_NOTHROW
*/
HB_FUNC_STATIC( QHOSTADDRESS_SWAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  auto obj = static_cast<QHostAddress*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQHOSTADDRESS(1))
    {
#endif
      obj->swap(*PQHOSTADDRESS(1));
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

HB_FUNC_STATIC( QHOSTADDRESS_SETADDRESS )
{
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    void setAddress( quint32 ip4Addr )
    */
    auto obj = static_cast<QHostAddress*>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->setAddress(PQUINT32(1));
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    bool setAddress( const QString & address )
    */
    auto obj = static_cast<QHostAddress*>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      RBOOL(obj->setAddress(PQSTRING(1)));
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QAbstractSocket::NetworkLayerProtocol protocol() const
*/
HB_FUNC_STATIC( QHOSTADDRESS_PROTOCOL )
{
  auto obj = static_cast<QHostAddress*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->protocol());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QHOSTADDRESS_TOIPV4ADDRESS )
{
  if (ISNUMPAR(0))
  {
    /*
    quint32 toIPv4Address() const
    */
    auto obj = static_cast<QHostAddress*>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      RQUINT32(obj->toIPv4Address());
    }

  }
  else if (ISNUMPAR(1) && HB_ISLOG(1))
  {
    /*
    quint32 toIPv4Address( bool * ok ) const
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
    auto obj = static_cast<QHostAddress*>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      bool par1;
      RQUINT32(obj->toIPv4Address( &par1));
      hb_storl(par1, 1);
    }
#endif

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QString toString() const
*/
HB_FUNC_STATIC( QHOSTADDRESS_TOSTRING )
{
  auto obj = static_cast<QHostAddress*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->toString());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QString scopeId() const
*/
HB_FUNC_STATIC( QHOSTADDRESS_SCOPEID )
{
  auto obj = static_cast<QHostAddress*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->scopeId());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setScopeId( const QString & id )
*/
HB_FUNC_STATIC( QHOSTADDRESS_SETSCOPEID )
{
  auto obj = static_cast<QHostAddress*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setScopeId(PQSTRING(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool isEqual( const QHostAddress & address, QHostAddress::ConversionMode mode = QHostAddress::TolerantConversion ) const
*/
HB_FUNC_STATIC( QHOSTADDRESS_ISEQUAL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = static_cast<QHostAddress*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && ISQHOSTADDRESS(1) && (HB_ISNUM(2) || HB_ISNIL(2)))
    {
#endif
      RBOOL(obj->isEqual(*PQHOSTADDRESS(1), HB_ISNIL(2) ? static_cast<QHostAddress::ConversionMode >( QHostAddress::TolerantConversion ) : static_cast<QHostAddress::ConversionMode >(hb_parni(2))));
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
bool isNull() const
*/
HB_FUNC_STATIC( QHOSTADDRESS_ISNULL )
{
  auto obj = static_cast<QHostAddress*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isNull());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void clear()
*/
HB_FUNC_STATIC( QHOSTADDRESS_CLEAR )
{
  auto obj = static_cast<QHostAddress*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->clear();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool isInSubnet( const QHostAddress & subnet, int netmask ) const
*/
HB_FUNC_STATIC( QHOSTADDRESS_ISINSUBNET )
{
  auto obj = static_cast<QHostAddress*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && ISQHOSTADDRESS(1) && HB_ISNUM(2))
    {
#endif
      RBOOL(obj->isInSubnet(*PQHOSTADDRESS(1), PINT(2)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isLoopback() const
*/
HB_FUNC_STATIC( QHOSTADDRESS_ISLOOPBACK )
{
  auto obj = static_cast<QHostAddress*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isLoopback());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isMulticast() const
*/
HB_FUNC_STATIC( QHOSTADDRESS_ISMULTICAST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  auto obj = static_cast<QHostAddress*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isMulticast());
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

HB_FUNC_STATIC( QHOSTADDRESS_NEWFROM )
{
  auto self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISOBJECT(1))
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if (hb_pcount() == 1 && HB_ISPOINTER(1))
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QHOSTADDRESS_NEWFROMOBJECT )
{
  HB_FUNC_EXEC(QHOSTADDRESS_NEWFROM);
}

HB_FUNC_STATIC( QHOSTADDRESS_NEWFROMPOINTER )
{
  HB_FUNC_EXEC(QHOSTADDRESS_NEWFROM);
}

HB_FUNC_STATIC( QHOSTADDRESS_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QHOSTADDRESS_SETSELFDESTRUCTION )
{
  auto self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISLOG(1))
  {
    auto des = hb_itemPutL(nullptr, hb_parl(1));
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
