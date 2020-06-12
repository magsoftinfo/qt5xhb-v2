%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtScxml
$added=5,8,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QScxmlInvokableService(QScxmlStateMachine *parentStateMachine, QScxmlInvokableServiceFactory *parent)
$constructor=|new|QScxmlStateMachine *,QScxmlInvokableServiceFactory *

$deleteMethod

%%
%% Q_PROPERTY(QScxmlStateMachine *parentStateMachine READ parentStateMachine CONSTANT)
%%

$prototypeV2=QScxmlStateMachine * parentStateMachine() const

%%
%% Q_PROPERTY(QString id READ id CONSTANT)
%%

$prototypeV2=virtual QString id() const = 0

%%
%% Q_PROPERTY(QString name READ name CONSTANT)
%%

$prototypeV2=virtual QString name() const = 0

%%
%%
%%

$prototypeV2=virtual bool start() = 0

$prototype=virtual void postEvent(QScxmlEvent *event) = 0
$virtualMethod=|void|postEvent|QScxmlEvent *

#pragma ENDDUMP
