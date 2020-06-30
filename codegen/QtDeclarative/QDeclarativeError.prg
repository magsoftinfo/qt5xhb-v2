%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDeclarative

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDeclarativeError ()
$internalConstructor=|new1|

$prototype=QDeclarativeError ( const QDeclarativeError & other )
$internalConstructor=|new2|const QDeclarativeError &

/*
[1]QDeclarativeError ()
[2]QDeclarativeError ( const QDeclarativeError & other )
*/

HB_FUNC_STATIC( QDECLARATIVEERROR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDeclarativeError_new1();
  }
  else if( ISNUMPAR(1) && ISQDECLARATIVEERROR(1) )
  {
    QDeclarativeError_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototypeV2=int column() const

$prototypeV2=QString description() const

$prototypeV2=bool isValid() const

$prototypeV2=int line() const

$prototypeV2=void setColumn( int column )

$prototypeV2=void setDescription( const QString & description )

$prototypeV2=void setLine( int line )

$prototypeV2=void setUrl( const QUrl & url )

$prototypeV2=QString toString() const

$prototypeV2=QUrl url() const

$extraMethods

#pragma ENDDUMP
