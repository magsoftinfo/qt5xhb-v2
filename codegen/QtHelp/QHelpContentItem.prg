%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtHelp

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QUrl>

$deleteMethod

$prototype=QHelpContentItem * child ( int row ) const
$method=|QHelpContentItem *|child|int

$prototypeV2=int childCount() const

$prototype=int childPosition ( QHelpContentItem * child ) const
$method=|int|childPosition|QHelpContentItem *

$prototypeV2=QHelpContentItem * parent() const

$prototypeV2=int row() const

$prototypeV2=QString title() const

$prototypeV2=QUrl url() const

$extraMethods

#pragma ENDDUMP
