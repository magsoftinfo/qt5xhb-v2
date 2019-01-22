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

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QMediaAvailabilityControl(QObject *parent = nullptr) [protected]

$prototype=~QMediaAvailabilityControl()
$deleteMethod

$prototype=virtual QMultimedia::AvailabilityStatus availability() const = 0
$virtualMethod=|QMultimedia::AvailabilityStatus|availability|

%%
%% SIGNALS
%%

$prototype=void availabilityChanged( QMultimedia::AvailabilityStatus availability )
$signalMethod=|void|availabilityChanged|QMultimedia::AvailabilityStatus

#pragma ENDDUMP
