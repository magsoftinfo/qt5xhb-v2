%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQuick

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QQuickWindow

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QList>
#include <QtQml/QQmlContext>
#include <QtQml/QQmlEngine>
#include <QtQuick/QQuickItem>

$prototype=QQuickView(QWindow * parent = nullptr)
$internalConstructor=|new1|QWindow *=nullptr

$prototype=QQuickView(QQmlEngine * engine, QWindow * parent)
$internalConstructor=|new2|QQmlEngine *,QWindow *

$prototype=QQuickView(const QUrl & source, QWindow * parent = nullptr)
$internalConstructor=|new3|const QUrl &,QWindow *=nullptr

/*
[1]QQuickView(QWindow * parent = nullptr)
[2]QQuickView(QQmlEngine * engine, QWindow * parent)
[3]QQuickView(const QUrl & source, QWindow * parent = nullptr)
*/

HB_FUNC_STATIC( QQUICKVIEW_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWINDOW(1)||ISNIL(1)) )
  {
    QQuickView_new1();
  }
  else if( ISNUMPAR(2) && ISQQMLENGINE(1) && ISQWINDOW(2) )
  {
    QQuickView_new2();
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && (ISQWINDOW(2)||ISNIL(2)) )
  {
    QQuickView_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QQmlEngine * engine() const

$prototypeV2=QSize initialSize() const

$prototypeV2=QQuickView::ResizeMode resizeMode() const

$prototypeV2=QQmlContext * rootContext() const

$prototypeV2=QQuickItem * rootObject() const

$prototype=void setResizeMode(ResizeMode)
$method=|void|setResizeMode|QQuickView::ResizeMode

$prototypeV2=QUrl source() const

$prototypeV2=QQuickView::Status status() const

$prototype=void setSource(const QUrl & url)
$method=|void|setSource|const QUrl &

%%
%% SIGNALS
%%

$prototype=void statusChanged( QQuickView::Status status )
$signalMethod=|void|statusChanged|QQuickView::Status

#pragma ENDDUMP
