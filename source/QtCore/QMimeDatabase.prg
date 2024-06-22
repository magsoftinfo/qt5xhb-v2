/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMIMETYPE
#endif

CLASS QMimeDatabase

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD mimeTypeForName
   METHOD mimeTypeForFile
   METHOD mimeTypesForFileName
   METHOD mimeTypeForData
   METHOD mimeTypeForUrl
   METHOD mimeTypeForFileNameAndData
   METHOD suffixForFileName
   METHOD allMimeTypes

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMimeDatabase
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QMimeDatabase>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtCore/QMimeDatabase>
#endif

/*
QMimeDatabase()
*/
HB_FUNC_STATIC( QMIMEDATABASE_NEW )
{
  if (ISNUMPAR(0))
  {
    auto obj = new QMimeDatabase();
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QMIMEDATABASE_DELETE )
{
  auto obj = static_cast<QMimeDatabase*>(Qt5xHb::itemGetPtrStackSelfItem());

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
QMimeType mimeTypeForName( const QString & nameOrAlias ) const
*/
HB_FUNC_STATIC( QMIMEDATABASE_MIMETYPEFORNAME )
{
  auto obj = static_cast<QMimeDatabase*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      auto ptr = new QMimeType(obj->mimeTypeForName(PQSTRING(1)));
      Qt5xHb::createReturnClass(ptr, "QMIMETYPE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QMIMEDATABASE_MIMETYPEFORFILE )
{
  if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (HB_ISNUM(2) || HB_ISNIL(2)))
  {
    /*
    QMimeType mimeTypeForFile( const QString & fileName, QMimeDatabase::MatchMode mode = QMimeDatabase::MatchDefault ) const
    */
    auto obj = static_cast<QMimeDatabase*>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      auto ptr = new QMimeType(obj->mimeTypeForFile(PQSTRING(1), HB_ISNIL(2) ? static_cast<QMimeDatabase::MatchMode >( QMimeDatabase::MatchDefault ) : static_cast<QMimeDatabase::MatchMode >( hb_parni(2))));
      Qt5xHb::createReturnClass(ptr, "QMIMETYPE", true);
    }

  }
  else if (ISBETWEEN(1, 2) && ISQFILEINFO(1) && (HB_ISNUM(2) || HB_ISNIL(2)))
  {
    /*
    QMimeType mimeTypeForFile( const QFileInfo & fileInfo, QMimeDatabase::MatchMode mode = QMimeDatabase::MatchDefault ) const
    */
    auto obj = static_cast<QMimeDatabase*>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      auto ptr = new QMimeType(obj->mimeTypeForFile( *PQFILEINFO(1), HB_ISNIL(2) ? static_cast<QMimeDatabase::MatchMode >( QMimeDatabase::MatchDefault ) : static_cast<QMimeDatabase::MatchMode >( hb_parni(2))));
      Qt5xHb::createReturnClass(ptr, "QMIMETYPE", true);
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QList<QMimeType> mimeTypesForFileName( const QString & fileName ) const
*/
HB_FUNC_STATIC( QMIMEDATABASE_MIMETYPESFORFILENAME )
{
  auto obj = static_cast<QMimeDatabase*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      auto list = obj->mimeTypesForFileName(PQSTRING(1));
      auto pDynSym = hb_dynsymFindName("QMIMETYPE");
      auto pArray = hb_itemArrayNew(0);
      if( pDynSym != nullptr )
      {
        for( const auto & item : list )
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          auto pObject = hb_itemNew(nullptr);
          hb_itemCopy(pObject, hb_stackReturnItem());
          auto pItem = hb_itemPutPtr(nullptr, new QMimeType(item));
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          auto pDestroy = hb_itemPutL(nullptr, true);
          hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
          hb_itemRelease(pDestroy);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QMIMETYPE", HB_ERR_ARGS_BASEPARAMS);
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QMIMEDATABASE_MIMETYPEFORDATA )
{
  if (ISNUMPAR(1) && ISQBYTEARRAY(1))
  {
    /*
    QMimeType mimeTypeForData( const QByteArray & data ) const
    */
    auto obj = static_cast<QMimeDatabase*>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      auto ptr = new QMimeType(obj->mimeTypeForData( *PQBYTEARRAY(1)));
      Qt5xHb::createReturnClass(ptr, "QMIMETYPE", true);
    }

  }
  else if (ISNUMPAR(1) && ISQIODEVICE(1))
  {
    /*
    QMimeType mimeTypeForData( QIODevice * device ) const
    */
    auto obj = static_cast<QMimeDatabase*>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      auto ptr = new QMimeType(obj->mimeTypeForData(PQIODEVICE(1)));
      Qt5xHb::createReturnClass(ptr, "QMIMETYPE", true);
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QMimeType mimeTypeForUrl( const QUrl & url ) const
*/
HB_FUNC_STATIC( QMIMEDATABASE_MIMETYPEFORURL )
{
  auto obj = static_cast<QMimeDatabase*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQURL(1))
    {
#endif
      auto ptr = new QMimeType(obj->mimeTypeForUrl( *PQURL(1)));
      Qt5xHb::createReturnClass(ptr, "QMIMETYPE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QMIMEDATABASE_MIMETYPEFORFILENAMEANDDATA )
{
  if (ISNUMPAR(2) && HB_ISCHAR(1) && ISQIODEVICE(2))
  {
    /*
    QMimeType mimeTypeForFileNameAndData( const QString & fileName, QIODevice * device ) const
    */
    auto obj = static_cast<QMimeDatabase*>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      auto ptr = new QMimeType(obj->mimeTypeForFileNameAndData(PQSTRING(1), PQIODEVICE(2)));
      Qt5xHb::createReturnClass(ptr, "QMIMETYPE", true);
    }

  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && ISQBYTEARRAY(2))
  {
    /*
    QMimeType mimeTypeForFileNameAndData( const QString & fileName, const QByteArray & data) const
    */
    auto obj = static_cast<QMimeDatabase*>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      auto ptr = new QMimeType(obj->mimeTypeForFileNameAndData(PQSTRING(1), *PQBYTEARRAY(2)));
      Qt5xHb::createReturnClass(ptr, "QMIMETYPE", true);
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QString suffixForFileName( const QString & fileName ) const
*/
HB_FUNC_STATIC( QMIMEDATABASE_SUFFIXFORFILENAME )
{
  auto obj = static_cast<QMimeDatabase*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RQSTRING(obj->suffixForFileName(PQSTRING(1)));
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
QList<QMimeType> allMimeTypes() const
*/
HB_FUNC_STATIC( QMIMEDATABASE_ALLMIMETYPES )
{
  auto obj = static_cast<QMimeDatabase*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto list = obj->allMimeTypes();
      auto pDynSym = hb_dynsymFindName("QMIMETYPE");
      auto pArray = hb_itemArrayNew(0);
      if( pDynSym != nullptr )
      {
        for( const auto & item : list )
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          auto pObject = hb_itemNew(nullptr);
          hb_itemCopy(pObject, hb_stackReturnItem());
          auto pItem = hb_itemPutPtr(nullptr, new QMimeType(item));
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          auto pDestroy = hb_itemPutL(nullptr, true);
          hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
          hb_itemRelease(pDestroy);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QMIMETYPE", HB_ERR_ARGS_BASEPARAMS);
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QMIMEDATABASE_NEWFROM )
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

HB_FUNC_STATIC( QMIMEDATABASE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC(QMIMEDATABASE_NEWFROM);
}

HB_FUNC_STATIC( QMIMEDATABASE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC(QMIMEDATABASE_NEWFROM);
}

HB_FUNC_STATIC( QMIMEDATABASE_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QMIMEDATABASE_SETSELFDESTRUCTION )
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
