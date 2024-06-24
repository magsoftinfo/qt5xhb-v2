/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QAxObject INHERIT QObject,QAxBase

   METHOD new
   METHOD delete
   METHOD doVerb
   METHOD asVariant
   METHOD clear
   METHOD control
   METHOD disableClassInfo
   METHOD disableEventSink
   METHOD disableMetaObject
   METHOD dynamicCall
   METHOD generateDocumentation
   METHOD isNull
   METHOD propertyWritable
   METHOD querySubObject
   METHOD setControl
   METHOD setPropertyWritable
   METHOD verbs

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAxObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <ActiveQt/QAxObject>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <ActiveQt/QAxObject>
#endif

#include <QtCore/QStringList>

HB_FUNC_STATIC(QAXOBJECT_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    /*
    QAxObject(QObject * parent = nullptr)
    */
    auto obj = new QAxObject(OPQOBJECT(1, nullptr));
    Qt5xHb::returnNewObject(obj, false);

  }
  else if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (ISQOBJECT(2) || HB_ISNIL(2)))
  {
    /*
    QAxObject(const QString & c, QObject * parent = nullptr)
    */
    auto obj = new QAxObject(PQSTRING(1), OPQOBJECT(2, nullptr));
    Qt5xHb::returnNewObject(obj, false);

  }
  else if (ISBETWEEN(1, 2) && HB_ISPOINTER(1) && (ISQOBJECT(2) || HB_ISNIL(2)))
  {
    /*
    QAxObject(IUnknown * iface, QObject * parent = nullptr)
    */
    auto obj = new QAxObject(static_cast< IUnknown*>(hb_parptr(1)), OPQOBJECT(2, nullptr));
    Qt5xHb::returnNewObject(obj, false);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QAXOBJECT_DELETE)
{
  auto obj = qobject_cast<QAxObject*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = nullptr;
    auto ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool doVerb(const QString & verb)
*/
HB_FUNC_STATIC(QAXOBJECT_DOVERB)
{
  auto obj = qobject_cast<QAxObject*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RBOOL(obj->doVerb(PQSTRING(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QAxBase methods - begin

/*
QVariant asVariant() const
*/
HB_FUNC_STATIC(QAXOBJECT_ASVARIANT)
{
  auto obj = qobject_cast<QAxObject*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QVariant(obj->asVariant());
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
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
virtual void clear()
*/
HB_FUNC_STATIC(QAXOBJECT_CLEAR)
{
  auto obj = qobject_cast<QAxObject*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
QString control() const
*/
HB_FUNC_STATIC(QAXOBJECT_CONTROL)
{
  auto obj = qobject_cast<QAxObject*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->control());
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
void disableClassInfo()
*/
HB_FUNC_STATIC(QAXOBJECT_DISABLECLASSINFO)
{
  auto obj = qobject_cast<QAxObject*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->disableClassInfo();
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
void disableEventSink()
*/
HB_FUNC_STATIC(QAXOBJECT_DISABLEEVENTSINK)
{
  auto obj = qobject_cast<QAxObject*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->disableEventSink();
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
void disableMetaObject()
*/
HB_FUNC_STATIC(QAXOBJECT_DISABLEMETAOBJECT)
{
  auto obj = qobject_cast<QAxObject*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->disableMetaObject();
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

HB_FUNC_STATIC(QAXOBJECT_DYNAMICCALL)
{
  if (ISBETWEEN(1, 9) && HB_ISCHAR(1) && (ISQVARIANT(2) || HB_ISNIL(2)) && (ISQVARIANT(3) || HB_ISNIL(3)) && (ISQVARIANT(4) || HB_ISNIL(4)) && (ISQVARIANT(5) || HB_ISNIL(5)) && (ISQVARIANT(6) || HB_ISNIL(6)) && (ISQVARIANT(7) || HB_ISNIL(7)) && (ISQVARIANT(8) || HB_ISNIL(8)) && (ISQVARIANT(9) || HB_ISNIL(9)))
  {
    /*
    QVariant dynamicCall(const char * function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant())
    */
    auto obj = qobject_cast<QAxObject*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      auto ptr = new QVariant(obj->dynamicCall(PCONSTCHAR(1), HB_ISNIL(2) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(2)), HB_ISNIL(3) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(3)), HB_ISNIL(4) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(4)), HB_ISNIL(5) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(5)), HB_ISNIL(6) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(6)), HB_ISNIL(7) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(7)), HB_ISNIL(8) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(8)), HB_ISNIL(9) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(9))));
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
    }

  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISARRAY(2))
  {
    /*
    QVariant dynamicCall(const char * function, QList<QVariant> & vars)
    */
    auto obj = qobject_cast<QAxObject*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      auto ptr = new QVariant(obj->dynamicCall(PCONSTCHAR(1), PQVARIANTLIST(2)));
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QString generateDocumentation()
*/
HB_FUNC_STATIC(QAXOBJECT_GENERATEDOCUMENTATION)
{
  auto obj = qobject_cast<QAxObject*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->generateDocumentation());
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
bool isNull() const
*/
HB_FUNC_STATIC(QAXOBJECT_ISNULL)
{
  auto obj = qobject_cast<QAxObject*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
virtual bool propertyWritable(const char * prop) const
*/
HB_FUNC_STATIC(QAXOBJECT_PROPERTYWRITABLE)
{
  auto obj = qobject_cast<QAxObject*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RBOOL(obj->propertyWritable(PCONSTCHAR(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QAXOBJECT_QUERYSUBOBJECT)
{
  if (ISBETWEEN(1, 9) && HB_ISCHAR(1) && (ISQVARIANT(2) || HB_ISNIL(2)) && (ISQVARIANT(3) || HB_ISNIL(3)) && (ISQVARIANT(4) || HB_ISNIL(4)) && (ISQVARIANT(5) || HB_ISNIL(5)) && (ISQVARIANT(6) || HB_ISNIL(6)) && (ISQVARIANT(7) || HB_ISNIL(7)) && (ISQVARIANT(8) || HB_ISNIL(8)) && (ISQVARIANT(9) || HB_ISNIL(9)))
  {
    /*
    QAxObject * querySubObject(const char * name, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant())
    */
    auto obj = qobject_cast<QAxObject*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      auto ptr = obj->querySubObject(PCONSTCHAR(1), HB_ISNIL(2) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(2)), HB_ISNIL(3) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(3)), HB_ISNIL(4) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(4)), HB_ISNIL(5) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(5)), HB_ISNIL(6) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(6)), HB_ISNIL(7) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(7)), HB_ISNIL(8) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(8)), HB_ISNIL(9) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(9)));
      Qt5xHb::createReturnQObjectClass(ptr, "QAXOBJECT");
    }

  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISARRAY(2))
  {
    /*
    QAxObject * querySubObject(const char * name, QList<QVariant> & vars)
    */
    auto obj = qobject_cast<QAxObject*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      auto ptr = obj->querySubObject(PCONSTCHAR(1), PQVARIANTLIST(2));
      Qt5xHb::createReturnQObjectClass(ptr, "QAXOBJECT");
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool setControl(const QString &)
*/
HB_FUNC_STATIC(QAXOBJECT_SETCONTROL)
{
  auto obj = qobject_cast<QAxObject*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RBOOL(obj->setControl(PQSTRING(1)));
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
virtual void setPropertyWritable(const char * prop, bool ok)
*/
HB_FUNC_STATIC(QAXOBJECT_SETPROPERTYWRITABLE)
{
  auto obj = qobject_cast<QAxObject*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISLOG(2))
    {
#endif
      obj->setPropertyWritable(PCONSTCHAR(1), PBOOL(2));
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
QStringList verbs() const
*/
HB_FUNC_STATIC(QAXOBJECT_VERBS)
{
  auto obj = qobject_cast<QAxObject*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRINGLIST(obj->verbs());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QAxBase methods - end

#pragma ENDDUMP
