/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QITEMEDITORFACTORY
REQUEST QSIZE
REQUEST QWIDGET
#endif

CLASS QStyledItemDelegate INHERIT QAbstractItemDelegate

   METHOD new
   METHOD delete
   METHOD paint
   METHOD sizeHint
   METHOD createEditor
   METHOD setEditorData
   METHOD setModelData
   METHOD updateEditorGeometry
   METHOD itemEditorFactory
   METHOD setItemEditorFactory
   METHOD displayText

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStyledItemDelegate
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QStyledItemDelegate>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals3.h"

#ifdef __XHARBOUR__
#include <QStyledItemDelegate>
#endif

/*
QStyledItemDelegate(QObject *parent = nullptr)
*/
HB_FUNC_STATIC( QSTYLEDITEMDELEGATE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QStyledItemDelegate * o = new QStyledItemDelegate ( OPQOBJECT(1,nullptr) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSTYLEDITEMDELEGATE_DELETE )
{
  QStyledItemDelegate * obj = (QStyledItemDelegate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void paint(QPainter *painter,const QStyleOptionViewItem &option, const QModelIndex &index) const
*/
HB_FUNC_STATIC( QSTYLEDITEMDELEGATE_PAINT )
{
  QStyledItemDelegate * obj = (QStyledItemDelegate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQPAINTER(1) && ISQSTYLEOPTIONVIEWITEM(2) && ISQMODELINDEX(3) )
    {
#endif
      obj->paint ( PQPAINTER(1), *PQSTYLEOPTIONVIEWITEM(2), *PQMODELINDEX(3) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize sizeHint(const QStyleOptionViewItem &option,const QModelIndex &index) const
*/
HB_FUNC_STATIC( QSTYLEDITEMDELEGATE_SIZEHINT )
{
  QStyledItemDelegate * obj = (QStyledItemDelegate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQSTYLEOPTIONVIEWITEM(1) && ISQMODELINDEX(2) )
    {
#endif
      QSize * ptr = new QSize( obj->sizeHint ( *PQSTYLEOPTIONVIEWITEM(1), *PQMODELINDEX(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QWidget *createEditor(QWidget *parent,const QStyleOptionViewItem &option,const QModelIndex &index) const
*/
HB_FUNC_STATIC( QSTYLEDITEMDELEGATE_CREATEEDITOR )
{
  QStyledItemDelegate * obj = (QStyledItemDelegate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQWIDGET(1) && ISQSTYLEOPTIONVIEWITEM(2) && ISQMODELINDEX(3) )
    {
#endif
      QWidget * ptr = obj->createEditor ( PQWIDGET(1), *PQSTYLEOPTIONVIEWITEM(2), *PQMODELINDEX(3) );
      _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setEditorData(QWidget *editor, const QModelIndex &index) const
*/
HB_FUNC_STATIC( QSTYLEDITEMDELEGATE_SETEDITORDATA )
{
  QStyledItemDelegate * obj = (QStyledItemDelegate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQWIDGET(1) && ISQMODELINDEX(2) )
    {
#endif
      obj->setEditorData ( PQWIDGET(1), *PQMODELINDEX(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setModelData(QWidget *editor,QAbstractItemModel *model,const QModelIndex &index) const
*/
HB_FUNC_STATIC( QSTYLEDITEMDELEGATE_SETMODELDATA )
{
  QStyledItemDelegate * obj = (QStyledItemDelegate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQWIDGET(1) && ISQABSTRACTITEMMODEL(2) && ISQMODELINDEX(3) )
    {
#endif
      obj->setModelData ( PQWIDGET(1), PQABSTRACTITEMMODEL(2), *PQMODELINDEX(3) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void updateEditorGeometry(QWidget *editor,const QStyleOptionViewItem &option,const QModelIndex &index) const
*/
HB_FUNC_STATIC( QSTYLEDITEMDELEGATE_UPDATEEDITORGEOMETRY )
{
  QStyledItemDelegate * obj = (QStyledItemDelegate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQWIDGET(1) && ISQSTYLEOPTIONVIEWITEM(2) && ISQMODELINDEX(3) )
    {
#endif
      obj->updateEditorGeometry ( PQWIDGET(1), *PQSTYLEOPTIONVIEWITEM(2), *PQMODELINDEX(3) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QItemEditorFactory *itemEditorFactory() const
*/
HB_FUNC_STATIC( QSTYLEDITEMDELEGATE_ITEMEDITORFACTORY )
{
  QStyledItemDelegate * obj = (QStyledItemDelegate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QItemEditorFactory * ptr = obj->itemEditorFactory ();
      _qt5xhb_createReturnClass ( ptr, "QITEMEDITORFACTORY", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setItemEditorFactory(QItemEditorFactory *factory)
*/
HB_FUNC_STATIC( QSTYLEDITEMDELEGATE_SETITEMEDITORFACTORY )
{
  QStyledItemDelegate * obj = (QStyledItemDelegate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQITEMEDITORFACTORY(1) )
    {
#endif
      obj->setItemEditorFactory ( PQITEMEDITORFACTORY(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QString displayText(const QVariant &value, const QLocale &locale) const
*/
HB_FUNC_STATIC( QSTYLEDITEMDELEGATE_DISPLAYTEXT )
{
  QStyledItemDelegate * obj = (QStyledItemDelegate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQVARIANT(1) && ISQLOCALE(2) )
    {
#endif
      RQSTRING( obj->displayText ( *PQVARIANT(1), *PQLOCALE(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
