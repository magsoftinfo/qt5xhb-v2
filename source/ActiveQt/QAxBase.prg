/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAXOBJECT
REQUEST QVARIANT
#endif

CLASS QAxBase

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD asVariant
   METHOD clear
   METHOD control
   METHOD disableClassInfo
   METHOD disableEventSink
   METHOD disableMetaObject
   METHOD dynamicCall
   METHOD generateDocumentation
   METHOD isNull
   METHOD propertyWritable
   METHOD querySubObject
   METHOD setControl
   METHOD setPropertyWritable
   METHOD verbs
   METHOD classContext
   METHOD setClassContext

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAxBase
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <ActiveQt/QAxBase>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <ActiveQt/QAxBase>
#endif

#include <ActiveQt/QAxObject>
#include <QtCore/QStringList>

HB_FUNC_STATIC( QAXBASE_DELETE )
{
  auto obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, nullptr );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QVariant asVariant() const
*/
HB_FUNC_STATIC( QAXBASE_ASVARIANT )
{
  auto obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QVariant( obj->asVariant() );
      Qt5xHb::createReturnClass( ptr, "QVARIANT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual void clear()
*/
HB_FUNC_STATIC( QAXBASE_CLEAR )
{
  auto obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString control() const
*/
HB_FUNC_STATIC( QAXBASE_CONTROL )
{
  auto obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->control() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void disableClassInfo()
*/
HB_FUNC_STATIC( QAXBASE_DISABLECLASSINFO )
{
  auto obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->disableClassInfo();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void disableEventSink()
*/
HB_FUNC_STATIC( QAXBASE_DISABLEEVENTSINK )
{
  auto obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->disableEventSink();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void disableMetaObject()
*/
HB_FUNC_STATIC( QAXBASE_DISABLEMETAOBJECT )
{
  auto obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->disableMetaObject();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QVariant dynamicCall( const char * function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
*/
void QAxBase_dynamicCall1()
{
  auto obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    auto ptr = new QVariant( obj->dynamicCall( PCONSTCHAR(1), ISNIL(2)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(2), ISNIL(3)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(3), ISNIL(4)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(4), ISNIL(5)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(5), ISNIL(6)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(6), ISNIL(7)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(7), ISNIL(8)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(8), ISNIL(9)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(9) ) );
    Qt5xHb::createReturnClass( ptr, "QVARIANT", true );
  }
}

/*
QVariant dynamicCall( const char * function, QList<QVariant> & vars )
*/
void QAxBase_dynamicCall2()
{
  auto obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    auto ptr = new QVariant( obj->dynamicCall( PCONSTCHAR(1), PQVARIANTLIST(2) ) );
    Qt5xHb::createReturnClass( ptr, "QVARIANT", true );
  }
}

/*
[1]QVariant dynamicCall ( const char * function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
[2]QVariant dynamicCall ( const char * function, QList<QVariant> & vars )
*/

HB_FUNC_STATIC( QAXBASE_DYNAMICCALL )
{
  if( ISBETWEEN(1,9) && ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) && (ISQVARIANT(3)||ISNIL(3)) && (ISQVARIANT(4)||ISNIL(4)) && (ISQVARIANT(5)||ISNIL(5)) && (ISQVARIANT(6)||ISNIL(6)) && (ISQVARIANT(7)||ISNIL(7)) && (ISQVARIANT(8)||ISNIL(8)) && (ISQVARIANT(9)||ISNIL(9)) )
  {
    QAxBase_dynamicCall1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QAxBase_dynamicCall2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString generateDocumentation()
*/
HB_FUNC_STATIC( QAXBASE_GENERATEDOCUMENTATION )
{
  auto obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->generateDocumentation() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isNull() const
*/
HB_FUNC_STATIC( QAXBASE_ISNULL )
{
  auto obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNull() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual bool propertyWritable( const char * prop ) const
*/
HB_FUNC_STATIC( QAXBASE_PROPERTYWRITABLE )
{
  auto obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      RBOOL( obj->propertyWritable( PCONSTCHAR(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QAxObject * querySubObject( const char * name, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
*/
void QAxBase_querySubObject1()
{
  auto obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    QAxObject * ptr = obj->querySubObject( PCONSTCHAR(1), ISNIL(2)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(2), ISNIL(3)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(3), ISNIL(4)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(4), ISNIL(5)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(5), ISNIL(6)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(6), ISNIL(7)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(7), ISNIL(8)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(8), ISNIL(9)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(9) );
    Qt5xHb::createReturnQObjectClass( ptr, "QAXOBJECT" );
  }
}

/*
QAxObject * querySubObject( const char * name, QList<QVariant> & vars )
*/
void QAxBase_querySubObject2()
{
  auto obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    QAxObject * ptr = obj->querySubObject( PCONSTCHAR(1), PQVARIANTLIST(2) );
    Qt5xHb::createReturnQObjectClass( ptr, "QAXOBJECT" );
  }
}

/*
[1]QAxObject * querySubObject ( const char * name, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
[2]QAxObject * querySubObject ( const char * name, QList<QVariant> & vars )
*/

HB_FUNC_STATIC( QAXBASE_QUERYSUBOBJECT )
{
  if( ISBETWEEN(1,9) && ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) && (ISQVARIANT(3)||ISNIL(3)) && (ISQVARIANT(4)||ISNIL(4)) && (ISQVARIANT(5)||ISNIL(5)) && (ISQVARIANT(6)||ISNIL(6)) && (ISQVARIANT(7)||ISNIL(7)) && (ISQVARIANT(8)||ISNIL(8)) && (ISQVARIANT(9)||ISNIL(9)) )
  {
    QAxBase_querySubObject1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QAxBase_querySubObject2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool setControl( const QString & )
*/
HB_FUNC_STATIC( QAXBASE_SETCONTROL )
{
  auto obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      RBOOL( obj->setControl( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual void setPropertyWritable( const char * prop, bool ok )
*/
HB_FUNC_STATIC( QAXBASE_SETPROPERTYWRITABLE )
{
  auto obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISCHAR(1) && ISLOG(2) )
    {
#endif
      obj->setPropertyWritable( PCONSTCHAR(1), PBOOL(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList verbs() const
*/
HB_FUNC_STATIC( QAXBASE_VERBS )
{
  auto obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->verbs() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
unsigned long classContext() const
*/
HB_FUNC_STATIC( QAXBASE_CLASSCONTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,13,0))
  auto obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RUNSIGNEDLONG( obj->classContext() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setClassContext( unsigned long classContext )
*/
HB_FUNC_STATIC( QAXBASE_SETCLASSCONTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,13,0))
  auto obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setClassContext( PUNSIGNEDLONG(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

HB_FUNC_STATIC( QAXBASE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( nullptr, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( nullptr, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QAXBASE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QAXBASE_NEWFROM );
}

HB_FUNC_STATIC( QAXBASE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QAXBASE_NEWFROM );
}

HB_FUNC_STATIC( QAXBASE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QAXBASE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( nullptr, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

/*
void exception( int code, const QString & source, const QString & desc, const QString & help )
*/

/*
void propertyChanged( const QString & name )
*/

/*
void signal( const QString & name, int argc, void * argv )
*/

#pragma ENDDUMP
