/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QITEMSELECTION
REQUEST QMODELINDEX
REQUEST QVARIANT
#endif

CLASS QIdentityProxyModel INHERIT QAbstractProxyModel

   METHOD new
   METHOD delete
   METHOD columnCount
   METHOD index
   METHOD mapFromSource
   METHOD mapToSource
   METHOD parent
   METHOD rowCount
   METHOD headerData
   METHOD dropMimeData
   METHOD sibling
   METHOD mapSelectionFromSource
   METHOD mapSelectionToSource
   METHOD match
   METHOD setSourceModel
   METHOD insertColumns
   METHOD insertRows
   METHOD removeColumns
   METHOD removeRows

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QIdentityProxyModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QIdentityProxyModel>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtCore/QIdentityProxyModel>
#endif

#include <QtCore/QItemSelection>

/*
QIdentityProxyModel( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_NEW )
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    auto obj = new QIdentityProxyModel( OPQOBJECT( 1, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QIDENTITYPROXYMODEL_DELETE )
{
  auto obj = qobject_cast<QIdentityProxyModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
int columnCount( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_COLUMNCOUNT )
{
  auto obj = qobject_cast<QIdentityProxyModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (ISQMODELINDEX(1) || HB_ISNIL(1)))
    {
#endif
      RINT(obj->columnCount( HB_ISNIL(1) ? QModelIndex() : *static_cast<QModelIndex*>(Qt5xHb::itemGetPtr(1))));
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
QModelIndex index( int row, int column, const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_INDEX )
{
  auto obj = qobject_cast<QIdentityProxyModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISNUM(2) && (ISQMODELINDEX(3) || HB_ISNIL(3)))
    {
#endif
      auto ptr = new QModelIndex(obj->index(PINT(1), PINT(2), HB_ISNIL(3) ? QModelIndex() : *static_cast<QModelIndex*>(Qt5xHb::itemGetPtr(3))));
      Qt5xHb::createReturnClass(ptr, "QMODELINDEX", true);
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
QModelIndex mapFromSource( const QModelIndex & sourceIndex ) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_MAPFROMSOURCE )
{
  auto obj = qobject_cast<QIdentityProxyModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQMODELINDEX(1))
    {
#endif
      auto ptr = new QModelIndex(obj->mapFromSource( *PQMODELINDEX(1)));
      Qt5xHb::createReturnClass(ptr, "QMODELINDEX", true);
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
QModelIndex mapToSource( const QModelIndex & proxyIndex ) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_MAPTOSOURCE )
{
  auto obj = qobject_cast<QIdentityProxyModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQMODELINDEX(1))
    {
#endif
      auto ptr = new QModelIndex(obj->mapToSource( *PQMODELINDEX(1)));
      Qt5xHb::createReturnClass(ptr, "QMODELINDEX", true);
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
QModelIndex parent( const QModelIndex & child ) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_PARENT )
{
  auto obj = qobject_cast<QIdentityProxyModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQMODELINDEX(1))
    {
#endif
      auto ptr = new QModelIndex(obj->parent( *PQMODELINDEX(1)));
      Qt5xHb::createReturnClass(ptr, "QMODELINDEX", true);
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
int rowCount( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_ROWCOUNT )
{
  auto obj = qobject_cast<QIdentityProxyModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (ISQMODELINDEX(1) || HB_ISNIL(1)))
    {
#endif
      RINT(obj->rowCount( HB_ISNIL(1) ? QModelIndex() : *static_cast<QModelIndex*>(Qt5xHb::itemGetPtr(1))));
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
QVariant headerData( int section, Qt::Orientation orientation, int role ) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_HEADERDATA )
{
  auto obj = qobject_cast<QIdentityProxyModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3))
    {
#endif
      auto ptr = new QVariant(obj->headerData(PINT(1), static_cast<Qt::Orientation>( hb_parni(2)), PINT(3)));
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
bool dropMimeData( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent )
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_DROPMIMEDATA )
{
  auto obj = qobject_cast<QIdentityProxyModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(5) && ISQMIMEDATA(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && ISQMODELINDEX(5))
    {
#endif
      RBOOL(obj->dropMimeData(PQMIMEDATA(1), static_cast<Qt::DropAction>( hb_parni(2)), PINT(3), PINT(4), *PQMODELINDEX(5)));
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
QModelIndex sibling( int row, int column, const QModelIndex & idx ) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_SIBLING )
{
  auto obj = qobject_cast<QIdentityProxyModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && ISQMODELINDEX(3))
    {
#endif
      auto ptr = new QModelIndex(obj->sibling(PINT(1), PINT(2), *PQMODELINDEX(3)));
      Qt5xHb::createReturnClass(ptr, "QMODELINDEX", true);
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
QItemSelection mapSelectionFromSource( const QItemSelection & selection ) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_MAPSELECTIONFROMSOURCE )
{
  auto obj = qobject_cast<QIdentityProxyModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQITEMSELECTION(1))
    {
#endif
      auto ptr = new QItemSelection(obj->mapSelectionFromSource( *PQITEMSELECTION(1)));
      Qt5xHb::createReturnClass(ptr, "QITEMSELECTION", true);
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
QItemSelection mapSelectionToSource( const QItemSelection & selection ) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_MAPSELECTIONTOSOURCE )
{
  auto obj = qobject_cast<QIdentityProxyModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQITEMSELECTION(1))
    {
#endif
      auto ptr = new QItemSelection(obj->mapSelectionToSource( *PQITEMSELECTION(1)));
      Qt5xHb::createReturnClass(ptr, "QITEMSELECTION", true);
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
QModelIndexList match( const QModelIndex & start, int role, const QVariant & value, int hits = 1, Qt::MatchFlags flags = Qt::MatchFlags( Qt::MatchStartsWith | Qt::MatchWrap ) ) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_MATCH )
{
  auto obj = qobject_cast<QIdentityProxyModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(3, 5) && ISQMODELINDEX(1) && HB_ISNUM(2) && ISQVARIANT(3) && (HB_ISNUM(4) || HB_ISNIL(4)) && (HB_ISNUM(5) || HB_ISNIL(5)))
    {
#endif
      auto list = obj->match( *PQMODELINDEX(1), PINT(2), *PQVARIANT(3), OPINT( 4, 1 ), HB_ISNIL(5) ? static_cast<Qt::MatchFlags >( Qt::MatchFlags( Qt::MatchStartsWith | Qt::MatchWrap ) ) : static_cast<Qt::MatchFlags >( hb_parni(5)));
      auto pDynSym = hb_dynsymFindName("QMODELINDEX");
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
          auto pItem = hb_itemPutPtr(nullptr, new QModelIndex(item));
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
        hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QMODELINDEX", HB_ERR_ARGS_BASEPARAMS);
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

/*
void setSourceModel( QAbstractItemModel * sourceModel )
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_SETSOURCEMODEL )
{
  auto obj = qobject_cast<QIdentityProxyModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQABSTRACTITEMMODEL(1))
    {
#endif
      obj->setSourceModel(PQABSTRACTITEMMODEL(1));
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
bool insertColumns( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_INSERTCOLUMNS )
{
  auto obj = qobject_cast<QIdentityProxyModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISNUM(2) && (ISQMODELINDEX(3) || HB_ISNIL(3)))
    {
#endif
      RBOOL(obj->insertColumns(PINT(1), PINT(2), HB_ISNIL(3) ? QModelIndex() : *static_cast<QModelIndex*>(Qt5xHb::itemGetPtr(3))));
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
bool insertRows( int row, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_INSERTROWS )
{
  auto obj = qobject_cast<QIdentityProxyModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISNUM(2) && (ISQMODELINDEX(3) || HB_ISNIL(3)))
    {
#endif
      RBOOL(obj->insertRows(PINT(1), PINT(2), HB_ISNIL(3) ? QModelIndex() : *static_cast<QModelIndex*>(Qt5xHb::itemGetPtr(3))));
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
bool removeColumns( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_REMOVECOLUMNS )
{
  auto obj = qobject_cast<QIdentityProxyModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISNUM(2) && (ISQMODELINDEX(3) || HB_ISNIL(3)))
    {
#endif
      RBOOL(obj->removeColumns(PINT(1), PINT(2), HB_ISNIL(3) ? QModelIndex() : *static_cast<QModelIndex*>(Qt5xHb::itemGetPtr(3))));
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
bool removeRows( int row, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_REMOVEROWS )
{
  auto obj = qobject_cast<QIdentityProxyModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISNUM(2) && (ISQMODELINDEX(3) || HB_ISNIL(3)))
    {
#endif
      RBOOL(obj->removeRows(PINT(1), PINT(2), HB_ISNIL(3) ? QModelIndex() : *static_cast<QModelIndex*>(Qt5xHb::itemGetPtr(3))));
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
