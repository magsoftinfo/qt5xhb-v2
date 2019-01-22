/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QPieModelMapper INHERIT QObject

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPieModelMapper
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QPieModelMapper>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QPieModelMapper>
#endif
#endif

using namespace QtCharts;

/*
explicit QPieModelMapper(QObject *parent = nullptr) [protected]
*/

/*
QAbstractItemModel *model() const [protected]
*/

/*
void setModel(QAbstractItemModel *model) [protected]
*/

/*
QPieSeries *series() const [protected]
*/

/*
void setSeries(QPieSeries *series) [protected]
*/

/*
int first() const [protected]
*/

/*
void setFirst(int first) [protected]
*/

/*
int count() const [protected]
*/

/*
void setCount(int count) [protected]
*/

/*
int valuesSection() const [protected]
*/

/*
void setValuesSection(int valuesSection) [protected]
*/

/*
int labelsSection() const [protected]
*/

/*
void setLabelsSection(int labelsSection) [protected]
*/

/*
Qt::Orientation orientation() const [protected]
*/

/*
void setOrientation(Qt::Orientation orientation) [protected]
*/

#pragma ENDDUMP
