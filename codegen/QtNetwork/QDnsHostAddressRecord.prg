%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtNetwork/QHostAddress>

$prototype=QDnsHostAddressRecord()
$internalConstructor=|new1|

$prototype=QDnsHostAddressRecord(const QDnsHostAddressRecord & other)
$internalConstructor=|new2|const QDnsHostAddressRecord &

/*
[1]QDnsHostAddressRecord()
[2]QDnsHostAddressRecord(const QDnsHostAddressRecord & other)
*/

HB_FUNC_STATIC( QDNSHOSTADDRESSRECORD_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDnsHostAddressRecord_new1();
  }
  else if( ISNUMPAR(1) && ISQDNSHOSTADDRESSRECORD(1) )
  {
    QDnsHostAddressRecord_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QDnsHostAddressRecord()
$deleteMethod

$prototypeV2=QString name() const

$prototype=void swap(QDnsHostAddressRecord &other) Q_DECL_NOTHROW
$method=|void|swap|QDnsHostAddressRecord &

$prototypeV2=quint32 timeToLive() const

$prototypeV2=QHostAddress value() const

$extraMethods

#pragma ENDDUMP
