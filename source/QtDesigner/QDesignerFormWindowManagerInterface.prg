/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QDESIGNERFORMEDITORINTERFACE
REQUEST QDESIGNERFORMWINDOWINTERFACE
#endif

CLASS QDesignerFormWindowManagerInterface INHERIT QObject

   METHOD delete
   METHOD actionAdjustSize
   METHOD actionBreakLayout
   METHOD actionCopy
   METHOD actionCut
   METHOD actionDelete
   METHOD actionFormLayout
   METHOD actionGridLayout
   METHOD actionHorizontalLayout
   METHOD actionLower
   METHOD actionPaste
   METHOD actionRaise
   METHOD actionRedo
   METHOD actionSelectAll
   METHOD actionSimplifyLayout
   METHOD actionSplitHorizontal
   METHOD actionSplitVertical
   METHOD actionUndo
   METHOD actionVerticalLayout
   METHOD activeFormWindow
   METHOD core
   METHOD createFormWindow
   METHOD formWindow
   METHOD formWindowCount
   METHOD addFormWindow
   METHOD removeFormWindow
   METHOD setActiveFormWindow

   METHOD onActiveFormWindowChanged
   METHOD onFormWindowAdded
   METHOD onFormWindowRemoved

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDesignerFormWindowManagerInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDesigner/QDesignerFormWindowManagerInterface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtDesigner/QDesignerFormWindowManagerInterface>
#endif

#include <QtDesigner/QDesignerFormEditorInterface>
#include <QtWidgets/QAction>

HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_DELETE )
{
  auto obj = (QDesignerFormWindowManagerInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Events_disconnect_all_events( obj, true );
    Signals5_disconnect_all_signals( obj, true );
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
virtual QAction * actionAdjustSize () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONADJUSTSIZE )
{
  auto obj = (QDesignerFormWindowManagerInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->actionAdjustSize();
      Qt5xHb::createReturnQObjectClass( ptr, "QACTION" );
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
virtual QAction * actionBreakLayout () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONBREAKLAYOUT )
{
  auto obj = (QDesignerFormWindowManagerInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->actionBreakLayout();
      Qt5xHb::createReturnQObjectClass( ptr, "QACTION" );
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
virtual QAction * actionCopy () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONCOPY )
{
  auto obj = (QDesignerFormWindowManagerInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->actionCopy();
      Qt5xHb::createReturnQObjectClass( ptr, "QACTION" );
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
virtual QAction * actionCut () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONCUT )
{
  auto obj = (QDesignerFormWindowManagerInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->actionCut();
      Qt5xHb::createReturnQObjectClass( ptr, "QACTION" );
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
virtual QAction * actionDelete () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONDELETE )
{
  auto obj = (QDesignerFormWindowManagerInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->actionDelete();
      Qt5xHb::createReturnQObjectClass( ptr, "QACTION" );
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
QAction * actionFormLayout () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONFORMLAYOUT )
{
  auto obj = (QDesignerFormWindowManagerInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->actionFormLayout();
      Qt5xHb::createReturnQObjectClass( ptr, "QACTION" );
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
virtual QAction * actionGridLayout () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONGRIDLAYOUT )
{
  auto obj = (QDesignerFormWindowManagerInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->actionGridLayout();
      Qt5xHb::createReturnQObjectClass( ptr, "QACTION" );
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
virtual QAction * actionHorizontalLayout () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONHORIZONTALLAYOUT )
{
  auto obj = (QDesignerFormWindowManagerInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->actionHorizontalLayout();
      Qt5xHb::createReturnQObjectClass( ptr, "QACTION" );
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
virtual QAction * actionLower () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONLOWER )
{
  auto obj = (QDesignerFormWindowManagerInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->actionLower();
      Qt5xHb::createReturnQObjectClass( ptr, "QACTION" );
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
virtual QAction * actionPaste () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONPASTE )
{
  auto obj = (QDesignerFormWindowManagerInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->actionPaste();
      Qt5xHb::createReturnQObjectClass( ptr, "QACTION" );
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
virtual QAction * actionRaise () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONRAISE )
{
  auto obj = (QDesignerFormWindowManagerInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->actionRaise();
      Qt5xHb::createReturnQObjectClass( ptr, "QACTION" );
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
virtual QAction * actionRedo () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONREDO )
{
  auto obj = (QDesignerFormWindowManagerInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->actionRedo();
      Qt5xHb::createReturnQObjectClass( ptr, "QACTION" );
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
virtual QAction * actionSelectAll () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONSELECTALL )
{
  auto obj = (QDesignerFormWindowManagerInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->actionSelectAll();
      Qt5xHb::createReturnQObjectClass( ptr, "QACTION" );
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
QAction * actionSimplifyLayout () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONSIMPLIFYLAYOUT )
{
  auto obj = (QDesignerFormWindowManagerInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->actionSimplifyLayout();
      Qt5xHb::createReturnQObjectClass( ptr, "QACTION" );
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
virtual QAction * actionSplitHorizontal () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONSPLITHORIZONTAL )
{
  auto obj = (QDesignerFormWindowManagerInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->actionSplitHorizontal();
      Qt5xHb::createReturnQObjectClass( ptr, "QACTION" );
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
virtual QAction * actionSplitVertical () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONSPLITVERTICAL )
{
  auto obj = (QDesignerFormWindowManagerInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->actionSplitVertical();
      Qt5xHb::createReturnQObjectClass( ptr, "QACTION" );
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
virtual QAction * actionUndo () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONUNDO )
{
  auto obj = (QDesignerFormWindowManagerInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->actionUndo();
      Qt5xHb::createReturnQObjectClass( ptr, "QACTION" );
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
virtual QAction * actionVerticalLayout () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONVERTICALLAYOUT )
{
  auto obj = (QDesignerFormWindowManagerInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->actionVerticalLayout();
      Qt5xHb::createReturnQObjectClass( ptr, "QACTION" );
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
virtual QDesignerFormWindowInterface * activeFormWindow () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIVEFORMWINDOW )
{
  auto obj = (QDesignerFormWindowManagerInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDesignerFormWindowInterface * ptr = obj->activeFormWindow();
      Qt5xHb::createReturnQWidgetClass( ptr, "QDESIGNERFORMWINDOWINTERFACE" );
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
virtual QDesignerFormEditorInterface * core () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_CORE )
{
  auto obj = (QDesignerFormWindowManagerInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDesignerFormEditorInterface * ptr = obj->core();
      Qt5xHb::createReturnQObjectClass( ptr, "QDESIGNERFORMEDITORINTERFACE" );
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
virtual QDesignerFormWindowInterface * createFormWindow ( QWidget * parent = nullptr, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_CREATEFORMWINDOW )
{
  auto obj = (QDesignerFormWindowManagerInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,2) && (ISQWIDGET(1)||ISNIL(1)) && ISOPTNUM(2) )
    {
#endif
      QDesignerFormWindowInterface * ptr = obj->createFormWindow( OPQWIDGET(1,nullptr), ISNIL(2)? (Qt::WindowFlags) 0 : (Qt::WindowFlags) hb_parni(2) );
      Qt5xHb::createReturnQWidgetClass( ptr, "QDESIGNERFORMWINDOWINTERFACE" );
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
virtual QDesignerFormWindowInterface * formWindow ( int index ) const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_FORMWINDOW )
{
  auto obj = (QDesignerFormWindowManagerInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QDesignerFormWindowInterface * ptr = obj->formWindow( PINT(1) );
      Qt5xHb::createReturnQWidgetClass( ptr, "QDESIGNERFORMWINDOWINTERFACE" );
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
virtual int formWindowCount () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_FORMWINDOWCOUNT )
{
  auto obj = (QDesignerFormWindowManagerInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->formWindowCount() );
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
virtual void addFormWindow ( QDesignerFormWindowInterface * formWindow )
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ADDFORMWINDOW )
{
  auto obj = (QDesignerFormWindowManagerInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDESIGNERFORMWINDOWINTERFACE(1) )
    {
#endif
      obj->addFormWindow( PQDESIGNERFORMWINDOWINTERFACE(1) );
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
virtual void removeFormWindow ( QDesignerFormWindowInterface * formWindow )
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_REMOVEFORMWINDOW )
{
  auto obj = (QDesignerFormWindowManagerInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDESIGNERFORMWINDOWINTERFACE(1) )
    {
#endif
      obj->removeFormWindow( PQDESIGNERFORMWINDOWINTERFACE(1) );
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
virtual void setActiveFormWindow ( QDesignerFormWindowInterface * formWindow )
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_SETACTIVEFORMWINDOW )
{
  auto obj = (QDesignerFormWindowManagerInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDESIGNERFORMWINDOWINTERFACE(1) )
    {
#endif
      obj->setActiveFormWindow( PQDESIGNERFORMWINDOWINTERFACE(1) );
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
void activeFormWindowChanged( QDesignerFormWindowInterface * formWindow )
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ONACTIVEFORMWINDOWCHANGED )
{
  auto sender = (QDesignerFormWindowManagerInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("activeFormWindowChanged(QDesignerFormWindowInterface*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals5_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QDesignerFormWindowManagerInterface::activeFormWindowChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (QDesignerFormWindowInterface * arg1) {
          PHB_ITEM cb = Signals5_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals5_return_qobject( (QObject *) sender, "QDESIGNERFORMWINDOWMANAGERINTERFACE" );
            PHB_ITEM pArg1 = Signals5_return_qobject( (QObject *) arg1, "QDESIGNERFORMWINDOWINTERFACE" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals5_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals5_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals5_get_connection( sender, indexOfSignal ) );

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

/*
void formWindowAdded( QDesignerFormWindowInterface * formWindow )
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ONFORMWINDOWADDED )
{
  auto sender = (QDesignerFormWindowManagerInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("formWindowAdded(QDesignerFormWindowInterface*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals5_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QDesignerFormWindowManagerInterface::formWindowAdded, 
                                                              [sender, indexOfCodeBlock]
                                                              (QDesignerFormWindowInterface * arg1) {
          PHB_ITEM cb = Signals5_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals5_return_qobject( (QObject *) sender, "QDESIGNERFORMWINDOWMANAGERINTERFACE" );
            PHB_ITEM pArg1 = Signals5_return_qobject( (QObject *) arg1, "QDESIGNERFORMWINDOWINTERFACE" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals5_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals5_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals5_get_connection( sender, indexOfSignal ) );

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

/*
void formWindowRemoved( QDesignerFormWindowInterface * formWindow )
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ONFORMWINDOWREMOVED )
{
  auto sender = (QDesignerFormWindowManagerInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("formWindowRemoved(QDesignerFormWindowInterface*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals5_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QDesignerFormWindowManagerInterface::formWindowRemoved, 
                                                              [sender, indexOfCodeBlock]
                                                              (QDesignerFormWindowInterface * arg1) {
          PHB_ITEM cb = Signals5_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals5_return_qobject( (QObject *) sender, "QDESIGNERFORMWINDOWMANAGERINTERFACE" );
            PHB_ITEM pArg1 = Signals5_return_qobject( (QObject *) arg1, "QDESIGNERFORMWINDOWINTERFACE" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals5_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals5_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals5_get_connection( sender, indexOfSignal ) );

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

#pragma ENDDUMP
