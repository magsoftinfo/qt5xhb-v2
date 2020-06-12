%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtScxml
$added=5,7,0

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

$prototype=explicit QScxmlStateMachine(const QMetaObject *metaObject, QObject *parent = nullptr) [protected]

$prototype=QScxmlStateMachine(QScxmlStateMachinePrivate &dd, QObject *parent = nullptr) [protected]

$deleteMethod

%%
%% Q_PROPERTY(bool running READ isRunning WRITE setRunning NOTIFY runningChanged)
%%

$prototypeV2=bool isRunning() const

$prototype=void setRunning(bool running)
$method=|void|setRunning|bool

%%
%% Q_PROPERTY(bool initialized READ isInitialized NOTIFY initializedChanged)
%%

$prototypeV2=bool isInitialized() const

%%
%% Q_PROPERTY(QScxmlDataModel *dataModel READ dataModel WRITE setDataModel NOTIFY dataModelChanged)
%%

$prototypeV2=QScxmlDataModel * dataModel() const

$prototype=void setDataModel(QScxmlDataModel *model)
$method=|void|setDataModel|QScxmlDataModel *

%%
%% Q_PROPERTY(QVariantMap initialValues READ initialValues WRITE setInitialValues NOTIFY initialValuesChanged)
%%

$prototype=QVariantMap initialValues()

$prototype=void setInitialValues(const QVariantMap &initialValues)

%%
%% Q_PROPERTY(QVector<QScxmlInvokableService*> invokedServices READ invokedServices NOTIFY invokedServicesChanged)
%%

$prototype=QVector<QScxmlInvokableService *> invokedServices() const
$method=|QVector<QScxmlInvokableService *>|invokedServices|

%%
%% Q_PROPERTY(QString sessionId READ sessionId CONSTANT)
%%

$prototypeV2=QString sessionId() const

%%
%% Q_PROPERTY(QString name READ name CONSTANT)
%%

$prototypeV2=QString name() const

%%
%% Q_PROPERTY(bool invoked READ isInvoked CONSTANT)
%%

$prototypeV2=bool isInvoked() const

%%
%% Q_PROPERTY(QVector<QScxmlError> parseErrors READ parseErrors CONSTANT)
%%

$prototype=QVector<QScxmlError> parseErrors() const
$method=|QVector<QScxmlError>|parseErrors|

%%
%% Q_PROPERTY(QScxmlCompiler::Loader *loader READ loader WRITE setLoader NOTIFY loaderChanged)
%%

$prototype=QScxmlCompiler::Loader *loader() const

$prototype=void setLoader(QScxmlCompiler::Loader *loader)

%%
%% Q_PROPERTY(QScxmlTableData *tableData READ tableData WRITE setTableData NOTIFY tableDataChanged)
%%

$prototypeV2=QScxmlTableData * tableData() const

$prototype=void setTableData(QScxmlTableData *tableData)
$method=|void|setTableData|QScxmlTableData *

%%
%%
%%

$prototype=static QScxmlStateMachine *fromFile(const QString &fileName)
$staticMethod=|QScxmlStateMachine *|fromFile|const QString &

$prototype=static QScxmlStateMachine *fromData(QIODevice *data, const QString &fileName = QString())
$staticMethod=|QScxmlStateMachine *|fromData|QIODevice *,const QString &=QString()

$prototype=Q_INVOKABLE QStringList stateNames(bool compress = true) const
$method=|QStringList|stateNames|bool=true

$prototype=Q_INVOKABLE QStringList activeStateNames(bool compress = true) const
$method=|QStringList|activeStateNames|bool=true

$prototype=Q_INVOKABLE bool isActive(const QString &scxmlStateName) const
$method=|bool|isActive|const QString &

$prototype=QMetaObject::Connection connectToState(const QString &scxmlStateName, const QObject *receiver, const char *method, Qt::ConnectionType type = Qt::AutoConnection)

$prototype=QMetaObject::Connection connectToEvent(const QString &scxmlEventSpec, const QObject *receiver, const char *method, Qt::ConnectionType type = Qt::AutoConnection)

$prototype=Q_INVOKABLE void submitEvent(QScxmlEvent *event)
$method=|void|submitEvent|QScxmlEvent *

$prototype=Q_INVOKABLE void submitEvent(const QString &eventName)
$method=|void|submitEvent|const QString &

$prototype=Q_INVOKABLE void submitEvent(const QString &eventName, const QVariant &data)
$method=|void|submitEvent|const QString &,const QVariant &

$prototype=Q_INVOKABLE void cancelDelayedEvent(const QString &sendId)
$method=|void|cancelDelayedEvent|const QString &

$prototype=Q_INVOKABLE bool isDispatchableTarget(const QString &target) const
$method=|bool|isDispatchableTarget|const QString &

$prototypeV2=void start() [slot]

$prototypeV2=void stop() [slot]

$prototypeV2=bool init() [slot]

$prototype=bool isActive(int stateIndex) const [protected]

$prototype=QMetaObject::Connection connectToStateImpl(const QString &scxmlStateName, const QObject *receiver, void **slot, QtPrivate::QSlotObjectBase *slotObj, Qt::ConnectionType type = Qt::AutoConnection) [private]

$prototype=QMetaObject::Connection connectToEventImpl(const QString &scxmlEventSpec, const QObject *receiver, void **slot, QtPrivate::QSlotObjectBase *slotObj, Qt::ConnectionType type = Qt::AutoConnection) [private]

%%
%% SIGNALS
%%

$prototype=void runningChanged(bool running)
$signalMethod=|void|runningChanged|bool

$prototype=void invokedServicesChanged(const QVector<QScxmlInvokableService *> &invokedServices)
$signalMethod=|void|invokedServicesChanged|const QVector<QScxmlInvokableService *> &

$prototype=void log(const QString &label, const QString &msg)
$signalMethod=|void|log|const QString &,const QString &

$prototype=void reachedStableState()
$signalMethod=|void|reachedStableState|

$prototype=void finished()
$signalMethod=|void|finished|

$prototype=void dataModelChanged(QScxmlDataModel *model)
$signalMethod=|void|dataModelChanged|QScxmlDataModel *

$prototype=void initialValuesChanged(const QVariantMap &initialValues)
$signalMethod=|void|initialValuesChanged|const QVariantMap &

$prototype=void initializedChanged(bool initialized)
$signalMethod=|void|initializedChanged|bool

$prototype=void loaderChanged(QScxmlCompiler::Loader *loader)

$prototype=void tableDataChanged(QScxmlTableData *tableData)
$signalMethod=|void|tableDataChanged|QScxmlTableData *

#pragma ENDDUMP
