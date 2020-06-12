%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQuick

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QQmlImageProviderBase

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QQuickImageProvider(ImageType type, Flags flags = 0)
$constructor=|new|QQmlImageProviderBase::ImageType,QQmlImageProviderBase::Flags=0

$deleteMethod

$prototypeV2=virtual QQmlImageProviderBase::Flags flags() const = 0

$prototypeV2=virtual QQmlImageProviderBase::ImageType imageType() const = 0

$prototype=virtual QImage requestImage(const QString & id, QSize * size, const QSize & requestedSize)
$virtualMethod=|QImage|requestImage|const QString &,QSize *,const QSize &

$prototype=virtual QPixmap requestPixmap(const QString & id, QSize * size, const QSize & requestedSize)
$virtualMethod=|QPixmap|requestPixmap|const QString &,QSize *,const QSize &

$prototype=virtual QQuickTextureFactory * requestTexture(const QString & id, QSize * size, const QSize & requestedSize)
$virtualMethod=|QQuickTextureFactory *|requestTexture|const QString &,QSize *,const QSize &

#pragma ENDDUMP
