/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QVIRTUALKEYBOARDINPUTCONTEXT
REQUEST QVIRTUALKEYBOARDINPUTENGINE
#endif

CLASS QVirtualKeyboardAbstractInputMethod INHERIT QObject

   METHOD delete
   METHOD inputContext
   METHOD inputEngine
   METHOD inputModes
   METHOD setInputMode
   METHOD setTextCase
   METHOD keyEvent
   METHOD selectionLists
   METHOD selectionListItemCount
   METHOD selectionListData
   METHOD selectionListItemSelected
   METHOD selectionListRemoveItem
   METHOD patternRecognitionModes
   METHOD traceEnd
   METHOD clickPreeditText
   METHOD reset
   METHOD update

   METHOD onSelectionListChanged
   METHOD onSelectionListActiveItemChanged
   METHOD onSelectionListsChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVirtualKeyboardAbstractInputMethod
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtVirtualKeyboard/QVirtualKeyboardAbstractInputMethod>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtVirtualKeyboard/QVirtualKeyboardAbstractInputMethod>
#endif

#include <QtVirtualKeyboard/QVirtualKeyboardInputContext>

/*
explicit QVirtualKeyboardAbstractInputMethod(QObject *parent = nullptr) [abstract]
*/

/*
~QVirtualKeyboardAbstractInputMethod()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_DELETE )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();

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
QVirtualKeyboardInputContext *inputContext() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_INPUTCONTEXT )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVirtualKeyboardInputContext * ptr = obj->inputContext ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QVIRTUALKEYBOARDINPUTCONTEXT" );
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
QVirtualKeyboardInputEngine *inputEngine() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_INPUTENGINE )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVirtualKeyboardInputEngine * ptr = obj->inputEngine ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QVIRTUALKEYBOARDINPUTENGINE" );
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
virtual QList<QVirtualKeyboardInputEngine::InputMode> inputModes(const QString &locale) = 0
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_INPUTMODES )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      QList<QVirtualKeyboardInputEngine::InputMode> list = obj->inputModes ( PQSTRING(1) );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
        hb_arrayAddForward( pArray, pItem );
        hb_itemRelease(pItem);
      }
      hb_itemReturnRelease(pArray);
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
virtual bool setInputMode(const QString &locale, QVirtualKeyboardInputEngine::InputMode inputMode) = 0
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_SETINPUTMODE )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
    {
#endif
      RBOOL( obj->setInputMode ( PQSTRING(1), (QVirtualKeyboardInputEngine::InputMode) hb_parni(2) ) );
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
virtual bool setTextCase(QVirtualKeyboardInputEngine::TextCase textCase) = 0
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_SETTEXTCASE )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->setTextCase ( (QVirtualKeyboardInputEngine::TextCase) hb_parni(1) ) );
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
virtual bool keyEvent(Qt::Key key, const QString &text, Qt::KeyboardModifiers modifiers) = 0
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_KEYEVENT )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISNUM(1) && ISCHAR(2) && ISNUM(3) )
    {
#endif
      RBOOL( obj->keyEvent ( (Qt::Key) hb_parni(1), PQSTRING(2), (Qt::KeyboardModifiers) hb_parni(3) ) );
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
virtual QList<QVirtualKeyboardSelectionListModel::Type> selectionLists()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_SELECTIONLISTS )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QVirtualKeyboardSelectionListModel::Type> list = obj->selectionLists ();
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
        hb_arrayAddForward( pArray, pItem );
        hb_itemRelease(pItem);
      }
      hb_itemReturnRelease(pArray);
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
virtual int selectionListItemCount(QVirtualKeyboardSelectionListModel::Type type)
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_SELECTIONLISTITEMCOUNT )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RINT( obj->selectionListItemCount ( (QVirtualKeyboardSelectionListModel::Type) hb_parni(1) ) );
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
virtual QVariant selectionListData(QVirtualKeyboardSelectionListModel::Type type, int index, QVirtualKeyboardSelectionListModel::Role role)
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_SELECTIONLISTDATA )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
    {
#endif
      QVariant * ptr = new QVariant( obj->selectionListData ( (QVirtualKeyboardSelectionListModel::Type) hb_parni(1), PINT(2), (QVirtualKeyboardSelectionListModel::Role) hb_parni(3) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
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
virtual void selectionListItemSelected(QVirtualKeyboardSelectionListModel::Type type, int index)
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_SELECTIONLISTITEMSELECTED )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      obj->selectionListItemSelected ( (QVirtualKeyboardSelectionListModel::Type) hb_parni(1), PINT(2) );
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
virtual bool selectionListRemoveItem(QVirtualKeyboardSelectionListModel::Type type, int index)
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_SELECTIONLISTREMOVEITEM )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      RBOOL( obj->selectionListRemoveItem ( (QVirtualKeyboardSelectionListModel::Type) hb_parni(1), PINT(2) ) );
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
virtual QList<QVirtualKeyboardInputEngine::PatternRecognitionMode> patternRecognitionModes() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_PATTERNRECOGNITIONMODES )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QVirtualKeyboardInputEngine::PatternRecognitionMode> list = obj->patternRecognitionModes ();
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
        hb_arrayAddForward( pArray, pItem );
        hb_itemRelease(pItem);
      }
      hb_itemReturnRelease(pArray);
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
virtual QVirtualKeyboardTrace *traceBegin(int traceId, QVirtualKeyboardInputEngine::PatternRecognitionMode patternRecognitionMode, const QVariantMap &traceCaptureDeviceInfo, const QVariantMap &traceScreenInfo)
*/

/*
virtual bool traceEnd(QVirtualKeyboardTrace *trace)
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_TRACEEND )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVIRTUALKEYBOARDTRACE(1) )
    {
#endif
      RBOOL( obj->traceEnd ( PQVIRTUALKEYBOARDTRACE(1) ) );
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
virtual bool reselect(int cursorPosition, const QVirtualKeyboardInputEngine::ReselectFlags &reselectFlags)
*/

/*
virtual bool clickPreeditText(int cursorPosition)
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_CLICKPREEDITTEXT )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->clickPreeditText ( PINT(1) ) );
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
virtual void reset() [slot]
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_RESET )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->reset ();
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
virtual void update() [slot]
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_UPDATE )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->update ();
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
void setInputEngine(QVirtualKeyboardInputEngine *inputEngine) [private]
*/

/*
void selectionListChanged( QVirtualKeyboardSelectionListModel::Type type )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_ONSELECTIONLISTCHANGED )
{
  QVirtualKeyboardAbstractInputMethod * sender = (QVirtualKeyboardAbstractInputMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("selectionListChanged(QVirtualKeyboardSelectionListModel::Type)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVirtualKeyboardAbstractInputMethod::selectionListChanged, 
                                                              [sender, indexOfSignal, indexOfCodeBlock]
                                                              (QVirtualKeyboardSelectionListModel::Type arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QVIRTUALKEYBOARDABSTRACTINPUTMETHOD" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
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
}

/*
void selectionListActiveItemChanged( QVirtualKeyboardSelectionListModel::Type type, int index )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_ONSELECTIONLISTACTIVEITEMCHANGED )
{
  QVirtualKeyboardAbstractInputMethod * sender = (QVirtualKeyboardAbstractInputMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("selectionListActiveItemChanged(QVirtualKeyboardSelectionListModel::Type,int)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVirtualKeyboardAbstractInputMethod::selectionListActiveItemChanged, 
                                                              [sender, indexOfSignal, indexOfCodeBlock]
                                                              (QVirtualKeyboardSelectionListModel::Type arg1, int arg2) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QVIRTUALKEYBOARDABSTRACTINPUTMETHOD" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            PHB_ITEM pArg2 = hb_itemPutNI( NULL, arg2 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 3, pSender, pArg1, pArg2 );
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
}

/*
void selectionListsChanged()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_ONSELECTIONLISTSCHANGED )
{
  QVirtualKeyboardAbstractInputMethod * sender = (QVirtualKeyboardAbstractInputMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("selectionListsChanged()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVirtualKeyboardAbstractInputMethod::selectionListsChanged, 
                                                              [sender, indexOfSignal, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QVIRTUALKEYBOARDABSTRACTINPUTMETHOD" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
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
}

#pragma ENDDUMP
