%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DExtras
$namespace=Qt3DExtras

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=Qt3DRender::QGeometryRenderer

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QTorusMesh(Qt3DCore::QNode *parent = nullptr)

$prototype=~QTorusMesh()
$deleteMethod

%%
%% Q_PROPERTY(int rings READ rings WRITE setRings NOTIFY ringsChanged)
%%

$prototypeV2=int rings() const

$prototypeV2=void setRings( int rings ) [slot]

%%
%% Q_PROPERTY(int slices READ slices WRITE setSlices NOTIFY slicesChanged)
%%

$prototypeV2=int slices() const

$prototypeV2=void setSlices( int slices ) [slot]

%%
%% Q_PROPERTY(float radius READ radius WRITE setRadius NOTIFY radiusChanged)
%%

$prototypeV2=float radius() const

$prototypeV2=void setRadius( float radius ) [slot]

%%
%% Q_PROPERTY(float minorRadius READ minorRadius WRITE setMinorRadius NOTIFY minorRadiusChanged)
%%

$prototypeV2=float minorRadius() const

$prototypeV2=void setMinorRadius( float minorRadius ) [slot]

%%
%%
%%

$prototype=void setInstanceCount(int instanceCount) [private]

$prototype=void setVertexCount(int vertexCount) [private]

$prototype=void setIndexOffset(int indexOffset) [private]

$prototype=void setFirstInstance(int firstInstance) [private]

$prototype=void setRestartIndexValue(int index) [private]

$prototype=void setPrimitiveRestartEnabled(bool enabled) [private]

$prototype=void setGeometry(Qt3DRender::QGeometry *geometry) [private]

$prototype=void setPrimitiveType(PrimitiveType primitiveType) [private]

%%
%% SIGNALS
%%

$prototype=void radiusChanged(float radius)
$prototype=void ringsChanged(int rings)
$prototype=void slicesChanged(int slices)
$prototype=void minorRadiusChanged(float minorRadius)

#pragma ENDDUMP
