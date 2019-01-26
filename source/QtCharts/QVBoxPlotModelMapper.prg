/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTITEMMODEL
REQUEST QBOXPLOTSERIES
#endif

CLASS QVBoxPlotModelMapper INHERIT QBoxPlotModelMapper

   METHOD new
   METHOD series
   METHOD setSeries
   METHOD model
   METHOD setModel
   METHOD firstBoxSetColumn
   METHOD setFirstBoxSetColumn
   METHOD lastBoxSetColumn
   METHOD setLastBoxSetColumn
   METHOD firstRow
   METHOD setFirstRow
   METHOD rowCount
   METHOD setRowCount

   METHOD onFirstBoxSetColumnChanged
   METHOD onFirstRowChanged
   METHOD onLastBoxSetColumnChanged
   METHOD onModelReplaced
   METHOD onRowCountChanged
   METHOD onSeriesReplaced

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVBoxPlotModelMapper
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QVBoxPlotModelMapper>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QVBoxPlotModelMapper>
#endif
#endif

#include <QBoxPlotSeries>
#include <QAbstractItemModel>

using namespace QtCharts;

/*
explicit QVBoxPlotModelMapper(QObject *parent = nullptr)
*/
HB_FUNC_STATIC( QVBOXPLOTMODELMAPPER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QVBoxPlotModelMapper * o = new QVBoxPlotModelMapper ( OPQOBJECT(1,nullptr) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
QBoxPlotSeries *series() const
*/
HB_FUNC_STATIC( QVBOXPLOTMODELMAPPER_SERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBoxPlotModelMapper * obj = (QVBoxPlotModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBoxPlotSeries * ptr = obj->series ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QBOXPLOTSERIES" );
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
void setSeries(QBoxPlotSeries *series)
*/
HB_FUNC_STATIC( QVBOXPLOTMODELMAPPER_SETSERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBoxPlotModelMapper * obj = (QVBoxPlotModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBOXPLOTSERIES(1) )
    {
#endif
      obj->setSeries ( PQBOXPLOTSERIES(1) );
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
QAbstractItemModel *model() const
*/
HB_FUNC_STATIC( QVBOXPLOTMODELMAPPER_MODEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBoxPlotModelMapper * obj = (QVBoxPlotModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAbstractItemModel * ptr = obj->model ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QABSTRACTITEMMODEL" );
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
void setModel(QAbstractItemModel *model)
*/
HB_FUNC_STATIC( QVBOXPLOTMODELMAPPER_SETMODEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBoxPlotModelMapper * obj = (QVBoxPlotModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTITEMMODEL(1) )
    {
#endif
      obj->setModel ( PQABSTRACTITEMMODEL(1) );
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
int firstBoxSetColumn() const
*/
HB_FUNC_STATIC( QVBOXPLOTMODELMAPPER_FIRSTBOXSETCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBoxPlotModelMapper * obj = (QVBoxPlotModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->firstBoxSetColumn () );
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
void setFirstBoxSetColumn(int firstBoxSetColumn)
*/
HB_FUNC_STATIC( QVBOXPLOTMODELMAPPER_SETFIRSTBOXSETCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBoxPlotModelMapper * obj = (QVBoxPlotModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setFirstBoxSetColumn ( PINT(1) );
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
int lastBoxSetColumn() const
*/
HB_FUNC_STATIC( QVBOXPLOTMODELMAPPER_LASTBOXSETCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBoxPlotModelMapper * obj = (QVBoxPlotModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->lastBoxSetColumn () );
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
void setLastBoxSetColumn(int lastBoxSetColumn)
*/
HB_FUNC_STATIC( QVBOXPLOTMODELMAPPER_SETLASTBOXSETCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBoxPlotModelMapper * obj = (QVBoxPlotModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setLastBoxSetColumn ( PINT(1) );
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
int firstRow() const
*/
HB_FUNC_STATIC( QVBOXPLOTMODELMAPPER_FIRSTROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBoxPlotModelMapper * obj = (QVBoxPlotModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->firstRow () );
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
void setFirstRow(int firstRow)
*/
HB_FUNC_STATIC( QVBOXPLOTMODELMAPPER_SETFIRSTROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBoxPlotModelMapper * obj = (QVBoxPlotModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setFirstRow ( PINT(1) );
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
int rowCount() const
*/
HB_FUNC_STATIC( QVBOXPLOTMODELMAPPER_ROWCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBoxPlotModelMapper * obj = (QVBoxPlotModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->rowCount () );
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
void setRowCount(int rowCount)
*/
HB_FUNC_STATIC( QVBOXPLOTMODELMAPPER_SETROWCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBoxPlotModelMapper * obj = (QVBoxPlotModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setRowCount ( PINT(1) );
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

using namespace QtCharts;

/*
void firstBoxSetColumnChanged()
*/
HB_FUNC_STATIC( QVBOXPLOTMODELMAPPER_ONFIRSTBOXSETCOLUMNCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBoxPlotModelMapper * sender = (QVBoxPlotModelMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "firstBoxSetColumnChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVBoxPlotModelMapper::firstBoxSetColumnChanged, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "firstBoxSetColumnChanged()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QVBOXPLOTMODELMAPPER" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "firstBoxSetColumnChanged()", connection );

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
  }
  else if( hb_pcount() == 0 )
  {
    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "firstBoxSetColumnChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "firstBoxSetColumnChanged()" ) );

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
#endif
}

/*
void firstRowChanged()
*/
HB_FUNC_STATIC( QVBOXPLOTMODELMAPPER_ONFIRSTROWCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBoxPlotModelMapper * sender = (QVBoxPlotModelMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "firstRowChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVBoxPlotModelMapper::firstRowChanged, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "firstRowChanged()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QVBOXPLOTMODELMAPPER" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "firstRowChanged()", connection );

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
  }
  else if( hb_pcount() == 0 )
  {
    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "firstRowChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "firstRowChanged()" ) );

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
#endif
}

/*
void lastBoxSetColumnChanged()
*/
HB_FUNC_STATIC( QVBOXPLOTMODELMAPPER_ONLASTBOXSETCOLUMNCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBoxPlotModelMapper * sender = (QVBoxPlotModelMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "lastBoxSetColumnChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVBoxPlotModelMapper::lastBoxSetColumnChanged, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "lastBoxSetColumnChanged()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QVBOXPLOTMODELMAPPER" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "lastBoxSetColumnChanged()", connection );

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
  }
  else if( hb_pcount() == 0 )
  {
    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "lastBoxSetColumnChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "lastBoxSetColumnChanged()" ) );

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
#endif
}

/*
void modelReplaced()
*/
HB_FUNC_STATIC( QVBOXPLOTMODELMAPPER_ONMODELREPLACED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBoxPlotModelMapper * sender = (QVBoxPlotModelMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "modelReplaced()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVBoxPlotModelMapper::modelReplaced, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "modelReplaced()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QVBOXPLOTMODELMAPPER" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "modelReplaced()", connection );

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
  }
  else if( hb_pcount() == 0 )
  {
    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "modelReplaced()" );

      QObject::disconnect( Signals2_get_connection( sender, "modelReplaced()" ) );

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
#endif
}

/*
void rowCountChanged()
*/
HB_FUNC_STATIC( QVBOXPLOTMODELMAPPER_ONROWCOUNTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBoxPlotModelMapper * sender = (QVBoxPlotModelMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "rowCountChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVBoxPlotModelMapper::rowCountChanged, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "rowCountChanged()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QVBOXPLOTMODELMAPPER" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "rowCountChanged()", connection );

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
  }
  else if( hb_pcount() == 0 )
  {
    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "rowCountChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "rowCountChanged()" ) );

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
#endif
}

/*
void seriesReplaced()
*/
HB_FUNC_STATIC( QVBOXPLOTMODELMAPPER_ONSERIESREPLACED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBoxPlotModelMapper * sender = (QVBoxPlotModelMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "seriesReplaced()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVBoxPlotModelMapper::seriesReplaced, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "seriesReplaced()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QVBOXPLOTMODELMAPPER" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "seriesReplaced()", connection );

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
  }
  else if( hb_pcount() == 0 )
  {
    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "seriesReplaced()" );

      QObject::disconnect( Signals2_get_connection( sender, "seriesReplaced()" ) );

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
#endif
}

#pragma ENDDUMP
