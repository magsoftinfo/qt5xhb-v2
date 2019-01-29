/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QCommandLinkButton INHERIT QPushButton

   METHOD new
   METHOD delete
   METHOD description
   METHOD setDescription
   METHOD isFlat
   METHOD setFlat

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCommandLinkButton
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCommandLinkButton>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals3.h"

#ifdef __XHARBOUR__
#include <QCommandLinkButton>
#endif

/*
QCommandLinkButton ( QWidget * parent = nullptr )
*/
void QCommandLinkButton_new1 ()
{
  QCommandLinkButton * o = new QCommandLinkButton ( OPQWIDGET(1,nullptr) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QCommandLinkButton ( const QString & text, QWidget * parent = nullptr )
*/
void QCommandLinkButton_new2 ()
{
  QCommandLinkButton * o = new QCommandLinkButton ( PQSTRING(1), OPQWIDGET(2,nullptr) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QCommandLinkButton ( const QString & text, const QString & description, QWidget * parent = nullptr )
*/
void QCommandLinkButton_new3 ()
{
  QCommandLinkButton * o = new QCommandLinkButton ( PQSTRING(1), PQSTRING(2), OPQWIDGET(3,nullptr) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]QCommandLinkButton ( QWidget * parent = nullptr )
//[2]QCommandLinkButton ( const QString & text, QWidget * parent = nullptr )
//[3]QCommandLinkButton ( const QString & text, const QString & description, QWidget * parent = nullptr )

HB_FUNC_STATIC( QCOMMANDLINKBUTTON_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QCommandLinkButton_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQWIDGET(2) )
  {
    QCommandLinkButton_new2();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISCHAR(2) && ISOPTQWIDGET(3) )
  {
    QCommandLinkButton_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QCOMMANDLINKBUTTON_DELETE )
{
  QCommandLinkButton * obj = (QCommandLinkButton *) _qt5xhb_itemGetPtrStackSelfItem();

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
QString description () const
*/
HB_FUNC_STATIC( QCOMMANDLINKBUTTON_DESCRIPTION )
{
  QCommandLinkButton * obj = (QCommandLinkButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->description () );
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
void setDescription ( const QString & description )
*/
HB_FUNC_STATIC( QCOMMANDLINKBUTTON_SETDESCRIPTION )
{
  QCommandLinkButton * obj = (QCommandLinkButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setDescription ( PQSTRING(1) );
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
bool isFlat () const
*/
HB_FUNC_STATIC( QCOMMANDLINKBUTTON_ISFLAT )
{
  QCommandLinkButton * obj = (QCommandLinkButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isFlat () );
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
void setFlat ( bool )
*/
HB_FUNC_STATIC( QCOMMANDLINKBUTTON_SETFLAT )
{
  QCommandLinkButton * obj = (QCommandLinkButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setFlat ( PBOOL(1) );
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

#pragma ENDDUMP
