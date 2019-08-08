%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtAndroidExtras
$added=5,10,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAndroidJniExceptionCleaner(OutputMode outputMode = OutputMode::Silent)
$constructor=|new|QAndroidJniExceptionCleaner::OutputMode=QAndroidJniExceptionCleaner::Silent

$prototype=~QAndroidJniExceptionCleaner()
$deleteMethod

$prototype=void clean()
$method=|void|clean|

$extraMethods

#pragma ENDDUMP
