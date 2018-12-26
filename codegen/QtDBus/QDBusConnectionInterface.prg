%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDBus

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QDBusAbstractInterface

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDBusConnectionInterface(const QDBusConnection &connection, QObject *parent) [private]
%% $constructor=|new|const QDBusConnection &,QObject *

%% $deleteMethod [private]

$prototype=QDBusReply<QStringList> registeredServiceNames() const
%% TODO: implementar
%% $method=|QDBusReply<QStringList>|registeredServiceNames|

$prototype=QDBusReply<bool> isServiceRegistered(const QString &serviceName) const
%% TODO: implementar
%% $method=|QDBusReply<bool>|isServiceRegistered|const QString &

$prototype=QDBusReply<QString> serviceOwner(const QString &name) const
%% TODO: implementar
%% $method=|QDBusReply<QString>|serviceOwner|const QString &

$prototype=QDBusReply<bool> unregisterService(const QString &serviceName)
%% TODO: implementar
%% $method=|QDBusReply<bool>|unregisterService|const QString &

$prototype=QDBusReply<QDBusConnectionInterface::RegisterServiceReply> registerService(const QString &serviceName,ServiceQueueOptions qoption = DontQueueService,ServiceReplacementOptions roption = DontAllowReplacement)
%% TODO: implementar
%% $method=|QDBusReply<QDBusConnectionInterface::RegisterServiceReply>|registerService|const QString &,QDBusConnectionInterface::ServiceQueueOptions=QDBusConnectionInterface::DontQueueService,QDBusConnectionInterface::ServiceReplacementOptions=QDBusConnectionInterface::DontAllowReplacement

$prototype=QDBusReply<uint> servicePid(const QString &serviceName) const
%% TODO: implementar
%% $method=|QDBusReply<uint>|servicePid|const QString &

$prototype=QDBusReply<uint> serviceUid(const QString &serviceName) const
%% TODO: implementar
%% $method=|QDBusReply<uint>|serviceUid|const QString &

$prototype=QDBusReply<void> startService(const QString &name)
%% TODO: implementar
%% $method=|QDBusReply<void>|startService|const QString &

%%
%% SIGNALS
%%

$prototype=void serviceRegistered( const QString & service )
$signalMethod=|void|serviceRegistered|QString

$prototype=void serviceUnregistered( const QString & service )
$signalMethod=|void|serviceUnregistered|QString

$prototype=void serviceOwnerChanged( const QString & name, const QString & oldOwner, const QString & newOwner )
$signalMethod=|void|serviceOwnerChanged|QString,QString,QString

$prototype=void callWithCallbackFailed( const QDBusError & error, const QDBusMessage & call )
$signalMethod=|void|callWithCallbackFailed|QDBusError,QDBusMessage

#pragma ENDDUMP
