//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QAbstract3DAxis INHERIT QObject

   METHOD delete
   METHOD title
   METHOD setTitle
   METHOD labels
   METHOD setLabels
   METHOD orientation
   METHOD type
   METHOD min
   METHOD setMin
   METHOD max
   METHOD setMax
   METHOD isAutoAdjustRange
   METHOD setAutoAdjustRange
   METHOD labelAutoRotation
   METHOD setLabelAutoRotation
   METHOD isTitleVisible
   METHOD setTitleVisible
   METHOD isTitleFixed
   METHOD setTitleFixed
   METHOD setRange

   METHOD onTitleChanged
   METHOD onLabelsChanged
   METHOD onOrientationChanged
   METHOD onMinChanged
   METHOD onMaxChanged
   METHOD onRangeChanged
   METHOD onAutoAdjustRangeChanged
   METHOD onLabelAutoRotationChanged
   METHOD onTitleVisibilityChanged
   METHOD onTitleFixedChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAbstract3DAxis
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
#include <QtDataVisualization/QAbstract3DAxis>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
#include <QtDataVisualization/QAbstract3DAxis>
#endif
#endif

    using namespace QtDataVisualization;

/*
virtual ~QAbstract3DAxis()
*/
HB_FUNC_STATIC(QABSTRACT3DAXIS_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QAbstract3DAxis *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = nullptr;
    auto ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QString title() const
*/
HB_FUNC_STATIC(QABSTRACT3DAXIS_TITLE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QAbstract3DAxis *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->title());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setTitle(const QString & title)
*/
HB_FUNC_STATIC(QABSTRACT3DAXIS_SETTITLE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QAbstract3DAxis *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setTitle(PQSTRING(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QStringList labels() const
*/
HB_FUNC_STATIC(QABSTRACT3DAXIS_LABELS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QAbstract3DAxis *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRINGLIST(obj->labels());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setLabels(const QStringList & labels)
*/
HB_FUNC_STATIC(QABSTRACT3DAXIS_SETLABELS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QAbstract3DAxis *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISARRAY(1))
    {
#endif
      obj->setLabels(PQSTRINGLIST(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QAbstract3DAxis::AxisOrientation orientation() const
*/
HB_FUNC_STATIC(QABSTRACT3DAXIS_ORIENTATION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QAbstract3DAxis *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->orientation());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QAbstract3DAxis::AxisType type() const
*/
HB_FUNC_STATIC(QABSTRACT3DAXIS_TYPE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QAbstract3DAxis *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->type());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
float min() const
*/
HB_FUNC_STATIC(QABSTRACT3DAXIS_MIN)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QAbstract3DAxis *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RFLOAT(obj->min());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setMin(float min)
*/
HB_FUNC_STATIC(QABSTRACT3DAXIS_SETMIN)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QAbstract3DAxis *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setMin(PFLOAT(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
float max() const
*/
HB_FUNC_STATIC(QABSTRACT3DAXIS_MAX)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QAbstract3DAxis *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RFLOAT(obj->max());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setMax(float max)
*/
HB_FUNC_STATIC(QABSTRACT3DAXIS_SETMAX)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QAbstract3DAxis *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setMax(PFLOAT(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
bool isAutoAdjustRange() const
*/
HB_FUNC_STATIC(QABSTRACT3DAXIS_ISAUTOADJUSTRANGE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QAbstract3DAxis *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isAutoAdjustRange());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setAutoAdjustRange(bool autoAdjust)
*/
HB_FUNC_STATIC(QABSTRACT3DAXIS_SETAUTOADJUSTRANGE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QAbstract3DAxis *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setAutoAdjustRange(PBOOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
float labelAutoRotation() const
*/
HB_FUNC_STATIC(QABSTRACT3DAXIS_LABELAUTOROTATION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QAbstract3DAxis *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RFLOAT(obj->labelAutoRotation());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setLabelAutoRotation(float angle)
*/
HB_FUNC_STATIC(QABSTRACT3DAXIS_SETLABELAUTOROTATION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QAbstract3DAxis *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setLabelAutoRotation(PFLOAT(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
bool isTitleVisible() const
*/
HB_FUNC_STATIC(QABSTRACT3DAXIS_ISTITLEVISIBLE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QAbstract3DAxis *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isTitleVisible());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setTitleVisible(bool visible)
*/
HB_FUNC_STATIC(QABSTRACT3DAXIS_SETTITLEVISIBLE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QAbstract3DAxis *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setTitleVisible(PBOOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
bool isTitleFixed() const
*/
HB_FUNC_STATIC(QABSTRACT3DAXIS_ISTITLEFIXED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QAbstract3DAxis *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isTitleFixed());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setTitleFixed(bool fixed)
*/
HB_FUNC_STATIC(QABSTRACT3DAXIS_SETTITLEFIXED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QAbstract3DAxis *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setTitleFixed(PBOOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
void setRange(float min, float max)
*/
HB_FUNC_STATIC(QABSTRACT3DAXIS_SETRANGE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QAbstract3DAxis *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
    {
#endif
      obj->setRange(PFLOAT(1), PFLOAT(2));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
void titleChanged(const QString & newTitle)
*/
HB_FUNC_STATIC(QABSTRACT3DAXIS_ONTITLECHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto sender = qobject_cast<QAbstract3DAxis *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("titleChanged(QString)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection =
            QObject::connect(sender, &QAbstract3DAxis::titleChanged, [sender, indexOfCodeBlock](const QString &arg1) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QABSTRACT3DAXIS");
                auto pArg1 = hb_itemPutC(nullptr, QSTRINGTOSTRING(arg1));
                hb_vmEvalBlockV(cb, 2, pSender, pArg1);
                hb_itemRelease(pSender);
                hb_itemRelease(pArg1);
              }
            });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void labelsChanged()
*/
HB_FUNC_STATIC(QABSTRACT3DAXIS_ONLABELSCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto sender = qobject_cast<QAbstract3DAxis *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("labelsChanged()");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender, &QAbstract3DAxis::labelsChanged, [sender, indexOfCodeBlock]() {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QABSTRACT3DAXIS");
            hb_vmEvalBlockV(cb, 1, pSender);
            hb_itemRelease(pSender);
          }
        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void orientationChanged(QAbstract3DAxis::AxisOrientation orientation)
*/
HB_FUNC_STATIC(QABSTRACT3DAXIS_ONORIENTATIONCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto sender = qobject_cast<QAbstract3DAxis *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("orientationChanged(QAbstract3DAxis::AxisOrientation)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender, &QAbstract3DAxis::orientationChanged,
                                           [sender, indexOfCodeBlock](QAbstract3DAxis::AxisOrientation arg1) {
                                             auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

                                             if (cb != nullptr)
                                             {
                                               auto pSender = Qt5xHb::Signals_return_qobject(sender, "QABSTRACT3DAXIS");
                                               auto pArg1 = hb_itemPutNI(nullptr, static_cast<int>(arg1));
                                               hb_vmEvalBlockV(cb, 2, pSender, pArg1);
                                               hb_itemRelease(pSender);
                                               hb_itemRelease(pArg1);
                                             }
                                           });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void minChanged(float value)
*/
HB_FUNC_STATIC(QABSTRACT3DAXIS_ONMINCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto sender = qobject_cast<QAbstract3DAxis *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("minChanged(float)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection =
            QObject::connect(sender, &QAbstract3DAxis::minChanged, [sender, indexOfCodeBlock](float arg1) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QABSTRACT3DAXIS");
                auto pArg1 = hb_itemPutND(nullptr, arg1);
                hb_vmEvalBlockV(cb, 2, pSender, pArg1);
                hb_itemRelease(pSender);
                hb_itemRelease(pArg1);
              }
            });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void maxChanged(float value)
*/
HB_FUNC_STATIC(QABSTRACT3DAXIS_ONMAXCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto sender = qobject_cast<QAbstract3DAxis *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("maxChanged(float)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection =
            QObject::connect(sender, &QAbstract3DAxis::maxChanged, [sender, indexOfCodeBlock](float arg1) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QABSTRACT3DAXIS");
                auto pArg1 = hb_itemPutND(nullptr, arg1);
                hb_vmEvalBlockV(cb, 2, pSender, pArg1);
                hb_itemRelease(pSender);
                hb_itemRelease(pArg1);
              }
            });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void rangeChanged(float min, float max)
*/
HB_FUNC_STATIC(QABSTRACT3DAXIS_ONRANGECHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto sender = qobject_cast<QAbstract3DAxis *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("rangeChanged(float,float)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender, &QAbstract3DAxis::rangeChanged,
                                           [sender, indexOfCodeBlock](float arg1, float arg2) {
                                             auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

                                             if (cb != nullptr)
                                             {
                                               auto pSender = Qt5xHb::Signals_return_qobject(sender, "QABSTRACT3DAXIS");
                                               auto pArg1 = hb_itemPutND(nullptr, arg1);
                                               auto pArg2 = hb_itemPutND(nullptr, arg2);
                                               hb_vmEvalBlockV(cb, 3, pSender, pArg1, pArg2);
                                               hb_itemRelease(pSender);
                                               hb_itemRelease(pArg1);
                                               hb_itemRelease(pArg2);
                                             }
                                           });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void autoAdjustRangeChanged(bool autoAdjust)
*/
HB_FUNC_STATIC(QABSTRACT3DAXIS_ONAUTOADJUSTRANGECHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto sender = qobject_cast<QAbstract3DAxis *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("autoAdjustRangeChanged(bool)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection =
            QObject::connect(sender, &QAbstract3DAxis::autoAdjustRangeChanged, [sender, indexOfCodeBlock](bool arg1) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QABSTRACT3DAXIS");
                auto pArg1 = hb_itemPutL(nullptr, arg1);
                hb_vmEvalBlockV(cb, 2, pSender, pArg1);
                hb_itemRelease(pSender);
                hb_itemRelease(pArg1);
              }
            });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void labelAutoRotationChanged(float angle)
*/
HB_FUNC_STATIC(QABSTRACT3DAXIS_ONLABELAUTOROTATIONCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto sender = qobject_cast<QAbstract3DAxis *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("labelAutoRotationChanged(float)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender, &QAbstract3DAxis::labelAutoRotationChanged,
                                           [sender, indexOfCodeBlock](float arg1) {
                                             auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

                                             if (cb != nullptr)
                                             {
                                               auto pSender = Qt5xHb::Signals_return_qobject(sender, "QABSTRACT3DAXIS");
                                               auto pArg1 = hb_itemPutND(nullptr, arg1);
                                               hb_vmEvalBlockV(cb, 2, pSender, pArg1);
                                               hb_itemRelease(pSender);
                                               hb_itemRelease(pArg1);
                                             }
                                           });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void titleVisibilityChanged(bool visible)
*/
HB_FUNC_STATIC(QABSTRACT3DAXIS_ONTITLEVISIBILITYCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto sender = qobject_cast<QAbstract3DAxis *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("titleVisibilityChanged(bool)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection =
            QObject::connect(sender, &QAbstract3DAxis::titleVisibilityChanged, [sender, indexOfCodeBlock](bool arg1) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QABSTRACT3DAXIS");
                auto pArg1 = hb_itemPutL(nullptr, arg1);
                hb_vmEvalBlockV(cb, 2, pSender, pArg1);
                hb_itemRelease(pSender);
                hb_itemRelease(pArg1);
              }
            });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void titleFixedChanged(bool fixed)
*/
HB_FUNC_STATIC(QABSTRACT3DAXIS_ONTITLEFIXEDCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto sender = qobject_cast<QAbstract3DAxis *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("titleFixedChanged(bool)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection =
            QObject::connect(sender, &QAbstract3DAxis::titleFixedChanged, [sender, indexOfCodeBlock](bool arg1) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QABSTRACT3DAXIS");
                auto pArg1 = hb_itemPutL(nullptr, arg1);
                hb_vmEvalBlockV(cb, 2, pSender, pArg1);
                hb_itemRelease(pSender);
                hb_itemRelease(pArg1);
              }
            });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
