/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTMESSAGEHANDLER
REQUEST QABSTRACTURIRESOLVER
REQUEST QNETWORKACCESSMANAGER
REQUEST QXMLNAMEPOOL
REQUEST QXMLSCHEMA
#endif

CLASS QXmlSchemaValidator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD messageHandler
   METHOD namePool
   METHOD networkAccessManager
   METHOD schema
   METHOD setMessageHandler
   METHOD setNetworkAccessManager
   METHOD setSchema
   METHOD setUriResolver
   METHOD uriResolver
   METHOD validate

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QXmlSchemaValidator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtXmlPatterns/QXmlSchemaValidator>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtXmlPatterns/QXmlSchemaValidator>
#endif

#include <QtNetwork/QNetworkAccessManager>
#include <QtXmlPatterns/QAbstractMessageHandler>
#include <QtXmlPatterns/QAbstractUriResolver>
#include <QtXmlPatterns/QXmlSchema>

HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_NEW )
{
  if (ISNUMPAR(0))
  {
    /*
    QXmlSchemaValidator()
    */
    auto obj = new QXmlSchemaValidator();
    Qt5xHb::returnNewObject(obj, true);

  }
  else if (ISNUMPAR(1) && ISQXMLSCHEMA(1))
  {
    /*
    QXmlSchemaValidator( const QXmlSchema & schema )
    */
    auto obj = new QXmlSchemaValidator( *PQXMLSCHEMA(1));
    Qt5xHb::returnNewObject(obj, true);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_DELETE )
{
  auto obj = static_cast<QXmlSchemaValidator*>(Qt5xHb::itemGetPtrStackSelfItem());

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
QAbstractMessageHandler * messageHandler() const
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_MESSAGEHANDLER )
{
  auto obj = static_cast<QXmlSchemaValidator*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->messageHandler();
      Qt5xHb::createReturnQObjectClass(ptr, "QABSTRACTMESSAGEHANDLER");
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
QXmlNamePool namePool() const
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_NAMEPOOL )
{
  auto obj = static_cast<QXmlSchemaValidator*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QXmlNamePool(obj->namePool());
      Qt5xHb::createReturnClass(ptr, "QXMLNAMEPOOL", true);
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
QNetworkAccessManager * networkAccessManager() const
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_NETWORKACCESSMANAGER )
{
  auto obj = static_cast<QXmlSchemaValidator*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->networkAccessManager();
      Qt5xHb::createReturnQObjectClass(ptr, "QNETWORKACCESSMANAGER");
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
QXmlSchema schema() const
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_SCHEMA )
{
  auto obj = static_cast<QXmlSchemaValidator*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QXmlSchema(obj->schema());
      Qt5xHb::createReturnClass(ptr, "QXMLSCHEMA", true);
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
void setMessageHandler( QAbstractMessageHandler * handler )
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_SETMESSAGEHANDLER )
{
  auto obj = static_cast<QXmlSchemaValidator*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQABSTRACTMESSAGEHANDLER(1))
    {
#endif
      obj->setMessageHandler(PQABSTRACTMESSAGEHANDLER(1));
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
void setNetworkAccessManager( QNetworkAccessManager * manager )
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_SETNETWORKACCESSMANAGER )
{
  auto obj = static_cast<QXmlSchemaValidator*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQNETWORKACCESSMANAGER(1))
    {
#endif
      obj->setNetworkAccessManager(PQNETWORKACCESSMANAGER(1));
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
void setSchema( const QXmlSchema & schema )
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_SETSCHEMA )
{
  auto obj = static_cast<QXmlSchemaValidator*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQXMLSCHEMA(1))
    {
#endif
      obj->setSchema( *PQXMLSCHEMA(1));
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
void setUriResolver( const QAbstractUriResolver * resolver )
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_SETURIRESOLVER )
{
  auto obj = static_cast<QXmlSchemaValidator*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQABSTRACTURIRESOLVER(1))
    {
#endif
      obj->setUriResolver(PQABSTRACTURIRESOLVER(1));
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
const QAbstractUriResolver * uriResolver() const
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_URIRESOLVER )
{
  auto obj = static_cast<QXmlSchemaValidator*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->uriResolver();
      Qt5xHb::createReturnQObjectClass(ptr, "QABSTRACTURIRESOLVER");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_VALIDATE )
{
  if (ISNUMPAR(1) && ISQURL(1))
  {
    /*
    bool validate( const QUrl & source ) const
    */
    auto obj = static_cast<QXmlSchemaValidator*>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      RBOOL(obj->validate( *PQURL(1)));
    }

  }
  else if (ISBETWEEN(1, 2) && ISQIODEVICE(1) && (ISQURL(2) || HB_ISNIL(2)))
  {
    /*
    bool validate( QIODevice * source, const QUrl & documentUri = QUrl() ) const
    */
    auto obj = static_cast<QXmlSchemaValidator*>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      RBOOL(obj->validate(PQIODEVICE(1), HB_ISNIL(2) ? QUrl() : *static_cast<QUrl*>(Qt5xHb::itemGetPtr(2))));
    }

  }
  else if (ISBETWEEN(1, 2) && ISQBYTEARRAY(1) && (ISQURL(2) || HB_ISNIL(2)))
  {
    /*
    bool validate( const QByteArray & data, const QUrl & documentUri = QUrl() ) const
    */
    auto obj = static_cast<QXmlSchemaValidator*>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      RBOOL(obj->validate( *PQBYTEARRAY(1), HB_ISNIL(2) ? QUrl() : *static_cast<QUrl*>(Qt5xHb::itemGetPtr(2))));
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_NEWFROM )
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

HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC(QXMLSCHEMAVALIDATOR_NEWFROM);
}

HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC(QXMLSCHEMAVALIDATOR_NEWFROM);
}

HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_SETSELFDESTRUCTION )
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
