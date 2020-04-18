/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSURFACE3DSERIES
REQUEST QSURFACEDATAITEM
#endif

CLASS QSurfaceDataProxy INHERIT QAbstractDataProxy

   METHOD new
   METHOD delete
   METHOD rowCount
   METHOD columnCount
   METHOD series
   METHOD itemAt
   METHOD setItem
   METHOD removeRows

   METHOD onArrayReset
   METHOD onColumnCountChanged
   METHOD onItemChanged
   METHOD onRowCountChanged
   METHOD onRowsAdded
   METHOD onRowsChanged
   METHOD onRowsInserted
   METHOD onRowsRemoved
   METHOD onSeriesChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSurfaceDataProxy
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtDataVisualization/QSurfaceDataProxy>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtDataVisualization/QSurfaceDataProxy>
#endif
#endif

using namespace QtDataVisualization;

#include <QtDataVisualization/QSurface3DSeries>

/*
explicit QSurfaceDataProxy(QObject *parent = nullptr)
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    auto obj = new QSurfaceDataProxy( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
explicit QSurfaceDataProxy(QSurfaceDataProxyPrivate *d, QObject *parent = nullptr) [protected]
*/

/*
virtual ~QSurfaceDataProxy()
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Events_disconnect_all_events( obj, true );
    Signals4_disconnect_all_signals( obj, true );
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int rowCount() const
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_ROWCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->rowCount() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
int columnCount() const
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_COLUMNCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->columnCount() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QSurface3DSeries *series() const
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_SERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSurface3DSeries * ptr = obj->series();
      Qt5xHb::createReturnQObjectClass( ptr, "QSURFACE3DSERIES" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
const QSurfaceDataArray *array() const
*/

/*
const QSurfaceDataItem *itemAt(int rowIndex, int columnIndex) const
*/
void QSurfaceDataProxy_itemAt1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    const QSurfaceDataItem * ptr = obj->itemAt( PINT(1), PINT(2) );
    Qt5xHb::createReturnClass( ptr, "QSURFACEDATAITEM", false );
  }
#endif
}

/*
const QSurfaceDataItem *itemAt(const QPoint &position) const
*/
void QSurfaceDataProxy_itemAt2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    const QSurfaceDataItem * ptr = obj->itemAt( *PQPOINT(1) );
    Qt5xHb::createReturnClass( ptr, "QSURFACEDATAITEM", false );
  }
#endif
}

/*
[1]const QSurfaceDataItem *itemAt(int rowIndex, int columnIndex) const
[2]const QSurfaceDataItem *itemAt(const QPoint &position) const
*/

HB_FUNC_STATIC( QSURFACEDATAPROXY_ITEMAT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QSurfaceDataProxy_itemAt1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QSurfaceDataProxy_itemAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void resetArray(QSurfaceDataArray *newArray)
*/

/*
void setRow(int rowIndex, QSurfaceDataRow *row)
*/

/*
void setRows(int rowIndex, const QSurfaceDataArray &rows)
*/

/*
void setItem(int rowIndex, int columnIndex, const QSurfaceDataItem &item)
*/
void QSurfaceDataProxy_setItem1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->setItem( PINT(1), PINT(2), *PQSURFACEDATAITEM(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setItem(const QPoint &position, const QSurfaceDataItem &item)
*/
void QSurfaceDataProxy_setItem2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->setItem( *PQPOINT(1), *PQSURFACEDATAITEM(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
[1]void setItem(int rowIndex, int columnIndex, const QSurfaceDataItem &item)
[2]void setItem(const QPoint &position, const QSurfaceDataItem &item)
*/

HB_FUNC_STATIC( QSURFACEDATAPROXY_SETITEM )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQSURFACEDATAITEM(3) )
  {
    QSurfaceDataProxy_setItem1();
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQSURFACEDATAITEM(2) )
  {
    QSurfaceDataProxy_setItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int addRow(QSurfaceDataRow *row)
*/

/*
int addRows(const QSurfaceDataArray &rows)
*/

/*
void insertRow(int rowIndex, QSurfaceDataRow *row)
*/

/*
void insertRows(int rowIndex, const QSurfaceDataArray &rows)
*/

/*
void removeRows(int rowIndex, int removeCount)
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_REMOVEROWS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      obj->removeRows( PINT(1), PINT(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void arrayReset()
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_ONARRAYRESET )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (QSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("arrayReset()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QSurfaceDataProxy::arrayReset, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject( (QObject *) sender, "QSURFACEDATAPROXY" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals4_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals4_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals4_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}

/*
void columnCountChanged( int count )
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_ONCOLUMNCOUNTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (QSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("columnCountChanged(int)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QSurfaceDataProxy::columnCountChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject( (QObject *) sender, "QSURFACEDATAPROXY" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, arg1 );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals4_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals4_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals4_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}

/*
void itemChanged( int rowIndex, int columnIndex )
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_ONITEMCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (QSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("itemChanged(int,int)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QSurfaceDataProxy::itemChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1, int arg2) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject( (QObject *) sender, "QSURFACEDATAPROXY" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, arg1 );
            PHB_ITEM pArg2 = hb_itemPutNI( NULL, arg2 );
            hb_vmEvalBlockV( cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
          }

        });

        Signals4_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals4_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals4_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}

/*
void rowCountChanged( int count )
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_ONROWCOUNTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (QSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("rowCountChanged(int)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QSurfaceDataProxy::rowCountChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject( (QObject *) sender, "QSURFACEDATAPROXY" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, arg1 );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals4_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals4_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals4_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}

/*
void rowsAdded( int startIndex, int count )
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_ONROWSADDED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (QSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("rowsAdded(int,int)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QSurfaceDataProxy::rowsAdded, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1, int arg2) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject( (QObject *) sender, "QSURFACEDATAPROXY" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, arg1 );
            PHB_ITEM pArg2 = hb_itemPutNI( NULL, arg2 );
            hb_vmEvalBlockV( cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
          }

        });

        Signals4_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals4_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals4_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}

/*
void rowsChanged( int startIndex, int count )
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_ONROWSCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (QSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("rowsChanged(int,int)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QSurfaceDataProxy::rowsChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1, int arg2) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject( (QObject *) sender, "QSURFACEDATAPROXY" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, arg1 );
            PHB_ITEM pArg2 = hb_itemPutNI( NULL, arg2 );
            hb_vmEvalBlockV( cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
          }

        });

        Signals4_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals4_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals4_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}

/*
void rowsInserted( int startIndex, int count )
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_ONROWSINSERTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (QSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("rowsInserted(int,int)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QSurfaceDataProxy::rowsInserted, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1, int arg2) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject( (QObject *) sender, "QSURFACEDATAPROXY" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, arg1 );
            PHB_ITEM pArg2 = hb_itemPutNI( NULL, arg2 );
            hb_vmEvalBlockV( cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
          }

        });

        Signals4_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals4_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals4_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}

/*
void rowsRemoved( int startIndex, int count )
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_ONROWSREMOVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (QSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("rowsRemoved(int,int)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QSurfaceDataProxy::rowsRemoved, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1, int arg2) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject( (QObject *) sender, "QSURFACEDATAPROXY" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, arg1 );
            PHB_ITEM pArg2 = hb_itemPutNI( NULL, arg2 );
            hb_vmEvalBlockV( cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
          }

        });

        Signals4_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals4_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals4_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}

/*
void seriesChanged( QSurface3DSeries * series )
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_ONSERIESCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (QSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("seriesChanged(QSurface3DSeries*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QSurfaceDataProxy::seriesChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (QSurface3DSeries * arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject( (QObject *) sender, "QSURFACEDATAPROXY" );
            PHB_ITEM pArg1 = Signals4_return_qobject( (QObject *) arg1, "QSURFACE3DSERIES" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals4_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals4_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals4_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
