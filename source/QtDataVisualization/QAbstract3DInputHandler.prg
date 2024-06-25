/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST Q3DSCENE
REQUEST QPOINT
#endif

CLASS QAbstract3DInputHandler INHERIT QObject

   METHOD delete
   METHOD inputView
   METHOD setInputView
   METHOD inputPosition
   METHOD setInputPosition
   METHOD scene
   METHOD setScene

   METHOD onInputViewChanged
   METHOD onPositionChanged
   METHOD onSceneChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAbstract3DInputHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
#include <QtDataVisualization/QAbstract3DInputHandler>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
#include <QtDataVisualization/QAbstract3DInputHandler>
#endif
#endif

    using namespace QtDataVisualization;

/*
virtual ~QAbstract3DInputHandler()
*/
HB_FUNC_STATIC(QABSTRACT3DINPUTHANDLER_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QAbstract3DInputHandler *>(Qt5xHb::getQObjectPointerFromSelfItem());

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
QAbstract3DInputHandler::InputView inputView() const
*/
HB_FUNC_STATIC(QABSTRACT3DINPUTHANDLER_INPUTVIEW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QAbstract3DInputHandler *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->inputView());
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
void setInputView(QAbstract3DInputHandler::InputView inputView)
*/
HB_FUNC_STATIC(QABSTRACT3DINPUTHANDLER_SETINPUTVIEW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QAbstract3DInputHandler *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setInputView(static_cast<QAbstract3DInputHandler::InputView>(hb_parni(1)));
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
QPoint inputPosition() const
*/
HB_FUNC_STATIC(QABSTRACT3DINPUTHANDLER_INPUTPOSITION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QAbstract3DInputHandler *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QPoint(obj->inputPosition());
      Qt5xHb::createReturnClass(ptr, "QPOINT", true);
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
void setInputPosition(const QPoint & position)
*/
HB_FUNC_STATIC(QABSTRACT3DINPUTHANDLER_SETINPUTPOSITION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QAbstract3DInputHandler *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPOINT(1))
    {
#endif
      obj->setInputPosition(*PQPOINT(1));
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
Q3DScene * scene() const
*/
HB_FUNC_STATIC(QABSTRACT3DINPUTHANDLER_SCENE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QAbstract3DInputHandler *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->scene();
      Qt5xHb::createReturnQObjectClass(ptr, "Q3DSCENE");
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
void setScene(Q3DScene * scene)
*/
HB_FUNC_STATIC(QABSTRACT3DINPUTHANDLER_SETSCENE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QAbstract3DInputHandler *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQ3DSCENE(1))
    {
#endif
      obj->setScene(PQ3DSCENE(1));
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
virtual void mouseDoubleClickEvent(QMouseEvent *event)
*/
/*
virtual void touchEvent(QTouchEvent *event)
*/
/*
virtual void mousePressEvent(QMouseEvent *event, const QPoint &mousePos)
*/
/*
virtual void mouseReleaseEvent(QMouseEvent *event, const QPoint &mousePos)
*/
/*
virtual void mouseMoveEvent(QMouseEvent *event, const QPoint &mousePos)
*/
/*
virtual void wheelEvent(QWheelEvent *event)
*/

/*
void inputViewChanged(QAbstract3DInputHandler::InputView view)
*/
HB_FUNC_STATIC(QABSTRACT3DINPUTHANDLER_ONINPUTVIEWCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto sender = qobject_cast<QAbstract3DInputHandler *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("inputViewChanged(QAbstract3DInputHandler::InputView)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender, &QAbstract3DInputHandler::inputViewChanged,
                                           [sender, indexOfCodeBlock](QAbstract3DInputHandler::InputView arg1) {
                                             auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

                                             if (cb != nullptr)
                                             {
                                               auto pSender =
                                                   Qt5xHb::Signals_return_qobject(sender, "QABSTRACT3DINPUTHANDLER");
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
void positionChanged(const QPoint & position)
*/
HB_FUNC_STATIC(QABSTRACT3DINPUTHANDLER_ONPOSITIONCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto sender = qobject_cast<QAbstract3DInputHandler *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("positionChanged(QPoint)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(
            sender, &QAbstract3DInputHandler::positionChanged, [sender, indexOfCodeBlock](const QPoint &arg1) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QABSTRACT3DINPUTHANDLER");
                auto pArg1 = Qt5xHb::Signals_return_object((void *)&arg1, "QPOINT");
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
void sceneChanged(Q3DScene * scene)
*/
HB_FUNC_STATIC(QABSTRACT3DINPUTHANDLER_ONSCENECHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto sender = qobject_cast<QAbstract3DInputHandler *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("sceneChanged(Q3DScene*)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(
            sender, &QAbstract3DInputHandler::sceneChanged, [sender, indexOfCodeBlock](Q3DScene *arg1) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QABSTRACT3DINPUTHANDLER");
                auto pArg1 = Qt5xHb::Signals_return_qobject(arg1, "Q3DSCENE");
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
