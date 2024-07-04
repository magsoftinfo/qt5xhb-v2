//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QTEXTCODEC
#endif

CLASS QXmlStreamWriter

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD autoFormatting
   METHOD autoFormattingIndent
   METHOD codec
   METHOD device
   METHOD hasError
   METHOD setAutoFormatting
   METHOD setAutoFormattingIndent
   METHOD setCodec
   METHOD setDevice
   METHOD writeAttribute
   METHOD writeAttributes
   METHOD writeCDATA
   METHOD writeCharacters
   METHOD writeComment
   METHOD writeCurrentToken
   METHOD writeDTD
   METHOD writeDefaultNamespace
   METHOD writeEmptyElement
   METHOD writeEndDocument
   METHOD writeEndElement
   METHOD writeEntityReference
   METHOD writeNamespace
   METHOD writeProcessingInstruction
   METHOD writeStartDocument
   METHOD writeStartElement
   METHOD writeTextElement

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QXmlStreamWriter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QXmlStreamWriter>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtCore/QXmlStreamWriter>
#endif

HB_FUNC_STATIC(QXMLSTREAMWRITER_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QXmlStreamWriter()
    */
    auto obj = new QXmlStreamWriter();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQIODEVICE(1))
  {
    /*
    QXmlStreamWriter(QIODevice * device)
    */
    auto obj = new QXmlStreamWriter(PQIODEVICE(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQBYTEARRAY(1))
  {
    /*
    QXmlStreamWriter(QByteArray * array)
    */
    auto obj = new QXmlStreamWriter(PQBYTEARRAY(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QXMLSTREAMWRITER_DELETE)
{
  auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

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
bool autoFormatting() const
*/
HB_FUNC_STATIC(QXMLSTREAMWRITER_AUTOFORMATTING)
{
  auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->autoFormatting());
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
int autoFormattingIndent() const
*/
HB_FUNC_STATIC(QXMLSTREAMWRITER_AUTOFORMATTINGINDENT)
{
  auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->autoFormattingIndent());
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
QTextCodec * codec() const
*/
HB_FUNC_STATIC(QXMLSTREAMWRITER_CODEC)
{
  auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->codec();
      Qt5xHb::createReturnClass(ptr, "QTEXTCODEC", false);
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
QIODevice * device() const
*/
HB_FUNC_STATIC(QXMLSTREAMWRITER_DEVICE)
{
  auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->device();
      Qt5xHb::createReturnQObjectClass(ptr, "QIODEVICE");
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
bool hasError() const
*/
HB_FUNC_STATIC(QXMLSTREAMWRITER_HASERROR)
{
  auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->hasError());
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
void setAutoFormatting(bool enable)
*/
HB_FUNC_STATIC(QXMLSTREAMWRITER_SETAUTOFORMATTING)
{
  auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setAutoFormatting(PBOOL(1));
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
void setAutoFormattingIndent(int spacesOrTabs)
*/
HB_FUNC_STATIC(QXMLSTREAMWRITER_SETAUTOFORMATTINGINDENT)
{
  auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setAutoFormattingIndent(PINT(1));
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

HB_FUNC_STATIC(QXMLSTREAMWRITER_SETCODEC)
{
  if (ISNUMPAR(1) && ISQTEXTCODEC(1))
  {
    /*
    void setCodec(QTextCodec * codec)
    */
    auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->setCodec(PQTEXTCODEC(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    void setCodec(const char * codecName)
    */
    auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->setCodec(PCONSTCHAR(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setDevice(QIODevice * device)
*/
HB_FUNC_STATIC(QXMLSTREAMWRITER_SETDEVICE)
{
  auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQIODEVICE(1))
    {
#endif
      obj->setDevice(PQIODEVICE(1));
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

HB_FUNC_STATIC(QXMLSTREAMWRITER_WRITEATTRIBUTE)
{
  if (ISNUMPAR(3) && HB_ISCHAR(1) && HB_ISCHAR(2) && HB_ISCHAR(3))
  {
    /*
    void writeAttribute(const QString & namespaceUri, const QString & name, const QString & value)
    */
    auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->writeAttribute(PQSTRING(1), PQSTRING(2), PQSTRING(3));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
  {
    /*
    void writeAttribute(const QString & qualifiedName, const QString & value)
    */
    auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->writeAttribute(PQSTRING(1), PQSTRING(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(1) && ISQXMLSTREAMATTRIBUTE(1))
  {
    /*
    void writeAttribute(const QXmlStreamAttribute & attribute)
    */
    auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->writeAttribute(*PQXMLSTREAMATTRIBUTE(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void writeAttributes(const QXmlStreamAttributes & attributes)
*/
HB_FUNC_STATIC(QXMLSTREAMWRITER_WRITEATTRIBUTES)
{
  auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQXMLSTREAMATTRIBUTES(1))
    {
#endif
      obj->writeAttributes(*PQXMLSTREAMATTRIBUTES(1));
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
void writeCDATA(const QString & text)
*/
HB_FUNC_STATIC(QXMLSTREAMWRITER_WRITECDATA)
{
  auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->writeCDATA(PQSTRING(1));
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
void writeCharacters(const QString & text)
*/
HB_FUNC_STATIC(QXMLSTREAMWRITER_WRITECHARACTERS)
{
  auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->writeCharacters(PQSTRING(1));
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
void writeComment(const QString & text)
*/
HB_FUNC_STATIC(QXMLSTREAMWRITER_WRITECOMMENT)
{
  auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->writeComment(PQSTRING(1));
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
void writeCurrentToken(const QXmlStreamReader & reader)
*/
HB_FUNC_STATIC(QXMLSTREAMWRITER_WRITECURRENTTOKEN)
{
  auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQXMLSTREAMREADER(1))
    {
#endif
      obj->writeCurrentToken(*PQXMLSTREAMREADER(1));
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
void writeDTD(const QString & dtd)
*/
HB_FUNC_STATIC(QXMLSTREAMWRITER_WRITEDTD)
{
  auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->writeDTD(PQSTRING(1));
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
void writeDefaultNamespace(const QString & namespaceUri)
*/
HB_FUNC_STATIC(QXMLSTREAMWRITER_WRITEDEFAULTNAMESPACE)
{
  auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->writeDefaultNamespace(PQSTRING(1));
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

HB_FUNC_STATIC(QXMLSTREAMWRITER_WRITEEMPTYELEMENT)
{
  if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
  {
    /*
    void writeEmptyElement(const QString & namespaceUri, const QString & name)
    */
    auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->writeEmptyElement(PQSTRING(1), PQSTRING(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    void writeEmptyElement(const QString & qualifiedName)
    */
    auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->writeEmptyElement(PQSTRING(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void writeEndDocument()
*/
HB_FUNC_STATIC(QXMLSTREAMWRITER_WRITEENDDOCUMENT)
{
  auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->writeEndDocument();
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
void writeEndElement()
*/
HB_FUNC_STATIC(QXMLSTREAMWRITER_WRITEENDELEMENT)
{
  auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->writeEndElement();
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
void writeEntityReference(const QString & name)
*/
HB_FUNC_STATIC(QXMLSTREAMWRITER_WRITEENTITYREFERENCE)
{
  auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->writeEntityReference(PQSTRING(1));
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
void writeNamespace(const QString & namespaceUri, const QString & prefix = QString())
*/
HB_FUNC_STATIC(QXMLSTREAMWRITER_WRITENAMESPACE)
{
  auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (HB_ISCHAR(2) || HB_ISNIL(2)))
    {
#endif
      obj->writeNamespace(PQSTRING(1), OPQSTRING(2, QString()));
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
void writeProcessingInstruction(const QString & target, const QString & data = QString())
*/
HB_FUNC_STATIC(QXMLSTREAMWRITER_WRITEPROCESSINGINSTRUCTION)
{
  auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (HB_ISCHAR(2) || HB_ISNIL(2)))
    {
#endif
      obj->writeProcessingInstruction(PQSTRING(1), OPQSTRING(2, QString()));
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

HB_FUNC_STATIC(QXMLSTREAMWRITER_WRITESTARTDOCUMENT)
{
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    void writeStartDocument(const QString & version)
    */
    auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->writeStartDocument(PQSTRING(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISLOG(2))
  {
    /*
    void writeStartDocument(const QString & version, bool standalone)
    */
    auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->writeStartDocument(PQSTRING(1), PBOOL(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(0))
  {
    /*
    void writeStartDocument()
    */
    auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->writeStartDocument();
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QXMLSTREAMWRITER_WRITESTARTELEMENT)
{
  if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
  {
    /*
    void writeStartElement(const QString & namespaceUri, const QString & name)
    */
    auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->writeStartElement(PQSTRING(1), PQSTRING(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    void writeStartElement(const QString & qualifiedName)
    */
    auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->writeStartElement(PQSTRING(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QXMLSTREAMWRITER_WRITETEXTELEMENT)
{
  if (ISNUMPAR(3) && HB_ISCHAR(1) && HB_ISCHAR(2) && HB_ISCHAR(3))
  {
    /*
    void writeTextElement(const QString & namespaceUri, const QString & name, const QString & text)
    */
    auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->writeTextElement(PQSTRING(1), PQSTRING(2), PQSTRING(3));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
  {
    /*
    void writeTextElement(const QString & qualifiedName, const QString & text)
    */
    auto obj = static_cast<QXmlStreamWriter *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->writeTextElement(PQSTRING(1), PQSTRING(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QXMLSTREAMWRITER_NEWFROM)
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

HB_FUNC_STATIC(QXMLSTREAMWRITER_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QXMLSTREAMWRITER_NEWFROM);
}

HB_FUNC_STATIC(QXMLSTREAMWRITER_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QXMLSTREAMWRITER_NEWFROM);
}

HB_FUNC_STATIC(QXMLSTREAMWRITER_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QXMLSTREAMWRITER_SETSELFDESTRUCTION)
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
