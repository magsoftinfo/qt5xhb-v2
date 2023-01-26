/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QACTIONGROUP
REQUEST QDIR
REQUEST QLAYOUT
REQUEST QWIDGET
#endif

CLASS QUiLoader INHERIT QObject

   METHOD new
   METHOD delete
   METHOD addPluginPath
   METHOD availableLayouts
   METHOD availableWidgets
   METHOD clearPluginPaths
   METHOD createAction
   METHOD createActionGroup
   METHOD createLayout
   METHOD createWidget
   METHOD isLanguageChangeEnabled
   METHOD load
   METHOD pluginPaths
   METHOD setLanguageChangeEnabled
   METHOD setWorkingDirectory
   METHOD workingDirectory

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QUiLoader
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtUiTools/QUiLoader>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtUiTools/QUiLoader>
#endif

#include <QtCore/QDir>
#include <QtCore/QStringList>
#include <QtWidgets/QAction>
#include <QtWidgets/QActionGroup>
#include <QtWidgets/QLayout>

/*
QUiLoader( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QUILOADER_NEW )
{
  if( ISBETWEEN(0, 1) && ( ISQOBJECT(1) || HB_ISNIL(1) ) )
  {
    auto obj = new QUiLoader( OPQOBJECT( 1, nullptr ) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QUILOADER_DELETE )
{
  auto obj = qobject_cast<QUiLoader*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = nullptr;
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void addPluginPath( const QString & path )
*/
HB_FUNC_STATIC( QUILOADER_ADDPLUGINPATH )
{
  auto obj = qobject_cast<QUiLoader*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->addPluginPath( PQSTRING(1) );
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
QStringList availableLayouts() const
*/
HB_FUNC_STATIC( QUILOADER_AVAILABLELAYOUTS )
{
  auto obj = qobject_cast<QUiLoader*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->availableLayouts() );
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
QStringList availableWidgets() const
*/
HB_FUNC_STATIC( QUILOADER_AVAILABLEWIDGETS )
{
  auto obj = qobject_cast<QUiLoader*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->availableWidgets() );
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
void clearPluginPaths()
*/
HB_FUNC_STATIC( QUILOADER_CLEARPLUGINPATHS )
{
  auto obj = qobject_cast<QUiLoader*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clearPluginPaths();
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
virtual QAction * createAction( QObject * parent = nullptr, const QString & name = QString() )
*/
HB_FUNC_STATIC( QUILOADER_CREATEACTION )
{
  auto obj = qobject_cast<QUiLoader*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 2) && ( ISQOBJECT(1) || HB_ISNIL(1) ) && ( HB_ISCHAR(2) || HB_ISNIL(2) ) )
    {
#endif
      QAction * ptr = obj->createAction( OPQOBJECT( 1, nullptr ), OPQSTRING( 2, QString() ) );
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
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
virtual QActionGroup * createActionGroup( QObject * parent = nullptr, const QString & name = QString() )
*/
HB_FUNC_STATIC( QUILOADER_CREATEACTIONGROUP )
{
  auto obj = qobject_cast<QUiLoader*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 2) && ( ISQOBJECT(1) || HB_ISNIL(1) ) && ( HB_ISCHAR(2) || HB_ISNIL(2) ) )
    {
#endif
      QActionGroup * ptr = obj->createActionGroup( OPQOBJECT( 1, nullptr ), OPQSTRING( 2, QString() ) );
      Qt5xHb::createReturnQObjectClass(ptr, "QACTIONGROUP");
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
virtual QLayout * createLayout( const QString & className, QObject * parent = nullptr, const QString & name = QString() )
*/
HB_FUNC_STATIC( QUILOADER_CREATELAYOUT )
{
  auto obj = qobject_cast<QUiLoader*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 3) && HB_ISCHAR(1) && ( ISQOBJECT(2) || HB_ISNIL(2) ) && ( HB_ISCHAR(3) || HB_ISNIL(3) ) )
    {
#endif
      QLayout * ptr = obj->createLayout( PQSTRING(1), OPQOBJECT( 2, nullptr ), OPQSTRING( 3, QString() ) );
      Qt5xHb::createReturnQObjectClass(ptr, "QLAYOUT");
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
virtual QWidget * createWidget( const QString & className, QWidget * parent = nullptr, const QString & name = QString() )
*/
HB_FUNC_STATIC( QUILOADER_CREATEWIDGET )
{
  auto obj = qobject_cast<QUiLoader*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 3) && HB_ISCHAR(1) && ( ISQWIDGET(2) || HB_ISNIL(2) ) && ( HB_ISCHAR(3) || HB_ISNIL(3) ) )
    {
#endif
      QWidget * ptr = obj->createWidget( PQSTRING(1), OPQWIDGET( 2, nullptr ), OPQSTRING( 3, QString() ) );
      Qt5xHb::createReturnQWidgetClass( ptr, "QWIDGET");
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
bool isLanguageChangeEnabled() const
*/
HB_FUNC_STATIC( QUILOADER_ISLANGUAGECHANGEENABLED )
{
  auto obj = qobject_cast<QUiLoader*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isLanguageChangeEnabled() );
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
QWidget * load( QIODevice * device, QWidget * parentWidget = nullptr )
*/
HB_FUNC_STATIC( QUILOADER_LOAD )
{
  auto obj = qobject_cast<QUiLoader*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && ISQIODEVICE(1) && ( ISQWIDGET(2) || HB_ISNIL(2) ) )
    {
#endif
      QWidget * ptr = obj->load( PQIODEVICE(1), OPQWIDGET( 2, nullptr ) );
      Qt5xHb::createReturnQWidgetClass( ptr, "QWIDGET");
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
QStringList pluginPaths() const
*/
HB_FUNC_STATIC( QUILOADER_PLUGINPATHS )
{
  auto obj = qobject_cast<QUiLoader*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->pluginPaths() );
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
void setLanguageChangeEnabled( bool enabled )
*/
HB_FUNC_STATIC( QUILOADER_SETLANGUAGECHANGEENABLED )
{
  auto obj = qobject_cast<QUiLoader*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setLanguageChangeEnabled( PBOOL(1) );
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
void setWorkingDirectory( const QDir & dir )
*/
HB_FUNC_STATIC( QUILOADER_SETWORKINGDIRECTORY )
{
  auto obj = qobject_cast<QUiLoader*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDIR(1) )
    {
#endif
      obj->setWorkingDirectory( *PQDIR(1) );
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
QDir workingDirectory() const
*/
HB_FUNC_STATIC( QUILOADER_WORKINGDIRECTORY )
{
  auto obj = qobject_cast<QUiLoader*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QDir( obj->workingDirectory() );
      Qt5xHb::createReturnClass(ptr, "QDIR", true);
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
