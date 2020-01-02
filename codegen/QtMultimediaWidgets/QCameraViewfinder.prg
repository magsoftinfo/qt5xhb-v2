%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimediaWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QVideoWidget

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QCameraViewfinder(QWidget * parent = nullptr)
$constructor=|new|QWidget *=nullptr

$deleteMethod

$prototype=virtual QMediaObject * mediaObject() const
$virtualMethod=|QMediaObject *|mediaObject|

#pragma ENDDUMP
