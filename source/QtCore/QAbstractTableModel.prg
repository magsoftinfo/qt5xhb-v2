//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMODELINDEX
#endif

CLASS QAbstractTableModel INHERIT QAbstractItemModel

   METHOD delete
   METHOD dropMimeData
   METHOD index

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAbstractTableModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QAbstractTableModel>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtCore/QAbstractTableModel>
#endif

HB_FUNC_STATIC(QABSTRACTTABLEMODEL_DELETE)
{
  auto obj = qobject_cast<QAbstractTableModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

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
virtual bool dropMimeData(const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex &
parent)
*/
HB_FUNC_STATIC(QABSTRACTTABLEMODEL_DROPMIMEDATA)
{
  auto obj = qobject_cast<QAbstractTableModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(5) && ISQMIMEDATA(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && ISQMODELINDEX(5))
    {
#endif
      RBOOL(obj->dropMimeData(PQMIMEDATA(1), static_cast<Qt::DropAction>(hb_parni(2)), PINT(3), PINT(4),
                              *PQMODELINDEX(5)));
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
virtual QModelIndex index(int row, int column, const QModelIndex & parent = QModelIndex()) const
*/
HB_FUNC_STATIC(QABSTRACTTABLEMODEL_INDEX)
{
  auto obj = qobject_cast<QAbstractTableModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISNUM(2) && (ISQMODELINDEX(3) || HB_ISNIL(3)))
    {
#endif
      auto ptr = new QModelIndex(obj->index(
          PINT(1), PINT(2), HB_ISNIL(3) ? QModelIndex() : *static_cast<QModelIndex *>(Qt5xHb::itemGetPtr(3))));
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

#pragma ENDDUMP
