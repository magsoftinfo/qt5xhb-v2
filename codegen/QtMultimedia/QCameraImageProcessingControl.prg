%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QMediaControl

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCameraImageProcessingControl(QObject *parent = nullptr) [protected]

$prototype=~QCameraImageProcessingControl()
$deleteMethod

$prototype=virtual bool isParameterSupported(ProcessingParameter parameter) const = 0
$virtualMethod=|bool|isParameterSupported|QCameraImageProcessingControl::ProcessingParameter

$prototype=virtual bool isParameterValueSupported(ProcessingParameter parameter, const QVariant & value) const = 0
$virtualMethod=|bool|isParameterValueSupported|QCameraImageProcessingControl::ProcessingParameter,const QVariant &

$prototype=virtual QVariant parameter(ProcessingParameter parameter) const = 0
$virtualMethod=|QVariant|parameter|QCameraImageProcessingControl::ProcessingParameter

$prototype=virtual void setParameter(ProcessingParameter parameter, const QVariant & value) = 0
$virtualMethod=|void|setParameter|QCameraImageProcessingControl::ProcessingParameter,const QVariant &

#pragma ENDDUMP
