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

CLASS QGamepadManager INHERIT QObject

   METHOD connectedGamepads
   METHOD instance
   METHOD isGamepadConnected
   METHOD isConfigurationNeeded
   METHOD configureButton
   METHOD configureAxis
   METHOD setCancelConfigureButton
   METHOD resetConfiguration
   METHOD setSettingsFile

   METHOD onConnectedGamepadsChanged
   METHOD onGamepadConnected
   METHOD onGamepadDisconnected
   METHOD onGamepadAxisEvent
   METHOD onGamepadButtonPressEvent
   METHOD onGamepadButtonReleaseEvent
   METHOD onButtonConfigured
   METHOD onAxisConfigured
   METHOD onConfigurationCanceled

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGamepadManager
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
#include <QtGamepad/QGamepadManager>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
#include <QtGamepad/QGamepadManager>
#endif
#endif

    /*
    const QList<int> connectedGamepads() const
    */
HB_FUNC_STATIC(QGAMEPADMANAGER_CONNECTEDGAMEPADS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  auto obj = qobject_cast<QGamepadManager *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto list = obj->connectedGamepads();
      Qt5xHb::convert_qlist_int_to_array(list);
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
static QGamepadManager * instance()
*/
HB_FUNC_STATIC(QGAMEPADMANAGER_INSTANCE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    auto ptr = QGamepadManager::instance();
    Qt5xHb::createReturnQObjectClass(ptr, "QGAMEPADMANAGER");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
bool isGamepadConnected(int deviceId) const
*/
HB_FUNC_STATIC(QGAMEPADMANAGER_ISGAMEPADCONNECTED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  auto obj = qobject_cast<QGamepadManager *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->isGamepadConnected(PINT(1)));
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
bool isConfigurationNeeded(int deviceId) const
*/
HB_FUNC_STATIC(QGAMEPADMANAGER_ISCONFIGURATIONNEEDED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  auto obj = qobject_cast<QGamepadManager *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->isConfigurationNeeded(PINT(1)));
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
bool configureButton(int deviceId, QGamepadManager::GamepadButton button)
*/
HB_FUNC_STATIC(QGAMEPADMANAGER_CONFIGUREBUTTON)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  auto obj = qobject_cast<QGamepadManager *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
    {
#endif
      RBOOL(obj->configureButton(PINT(1), static_cast<QGamepadManager::GamepadButton>(hb_parni(2))));
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
bool configureAxis(int deviceId, QGamepadManager::GamepadAxis axis)
*/
HB_FUNC_STATIC(QGAMEPADMANAGER_CONFIGUREAXIS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  auto obj = qobject_cast<QGamepadManager *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
    {
#endif
      RBOOL(obj->configureAxis(PINT(1), static_cast<QGamepadManager::GamepadAxis>(hb_parni(2))));
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
bool setCancelConfigureButton(int deviceId, QGamepadManager::GamepadButton button)
*/
HB_FUNC_STATIC(QGAMEPADMANAGER_SETCANCELCONFIGUREBUTTON)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  auto obj = qobject_cast<QGamepadManager *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
    {
#endif
      RBOOL(obj->setCancelConfigureButton(PINT(1), static_cast<QGamepadManager::GamepadButton>(hb_parni(2))));
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
void resetConfiguration(int deviceId)
*/
HB_FUNC_STATIC(QGAMEPADMANAGER_RESETCONFIGURATION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  auto obj = qobject_cast<QGamepadManager *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->resetConfiguration(PINT(1));
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
void setSettingsFile(const QString & file)
*/
HB_FUNC_STATIC(QGAMEPADMANAGER_SETSETTINGSFILE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  auto obj = qobject_cast<QGamepadManager *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setSettingsFile(PQSTRING(1));
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
void connectedGamepadsChanged()
*/
HB_FUNC_STATIC(QGAMEPADMANAGER_ONCONNECTEDGAMEPADSCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  auto sender = qobject_cast<QGamepadManager *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("connectedGamepadsChanged()");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection =
            QObject::connect(sender, &QGamepadManager::connectedGamepadsChanged, [sender, indexOfCodeBlock]() {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QGAMEPADMANAGER");
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
void gamepadConnected(int deviceId)
*/
HB_FUNC_STATIC(QGAMEPADMANAGER_ONGAMEPADCONNECTED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  auto sender = qobject_cast<QGamepadManager *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("gamepadConnected(int)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection =
            QObject::connect(sender, &QGamepadManager::gamepadConnected, [sender, indexOfCodeBlock](int arg1) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QGAMEPADMANAGER");
                auto pArg1 = hb_itemPutNI(nullptr, arg1);
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
void gamepadDisconnected(int deviceId)
*/
HB_FUNC_STATIC(QGAMEPADMANAGER_ONGAMEPADDISCONNECTED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  auto sender = qobject_cast<QGamepadManager *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("gamepadDisconnected(int)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection =
            QObject::connect(sender, &QGamepadManager::gamepadDisconnected, [sender, indexOfCodeBlock](int arg1) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QGAMEPADMANAGER");
                auto pArg1 = hb_itemPutNI(nullptr, arg1);
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
void gamepadAxisEvent(int deviceId, QGamepadManager::GamepadAxis axis, double value)
*/
HB_FUNC_STATIC(QGAMEPADMANAGER_ONGAMEPADAXISEVENT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  auto sender = qobject_cast<QGamepadManager *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal =
        sender->metaObject()->indexOfSignal("gamepadAxisEvent(int,QGamepadManager::GamepadAxis,double)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection =
            QObject::connect(sender, &QGamepadManager::gamepadAxisEvent,
                             [sender, indexOfCodeBlock](int arg1, QGamepadManager::GamepadAxis arg2, double arg3) {
                               auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

                               if (cb != nullptr)
                               {
                                 auto pSender = Qt5xHb::Signals_return_qobject(sender, "QGAMEPADMANAGER");
                                 auto pArg1 = hb_itemPutNI(nullptr, arg1);
                                 auto pArg2 = hb_itemPutNI(nullptr, static_cast<int>(arg2));
                                 auto pArg3 = hb_itemPutND(nullptr, arg3);
                                 hb_vmEvalBlockV(cb, 4, pSender, pArg1, pArg2, pArg3);
                                 hb_itemRelease(pSender);
                                 hb_itemRelease(pArg1);
                                 hb_itemRelease(pArg2);
                                 hb_itemRelease(pArg3);
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
void gamepadButtonPressEvent(int deviceId, QGamepadManager::GamepadButton button, double value)
*/
HB_FUNC_STATIC(QGAMEPADMANAGER_ONGAMEPADBUTTONPRESSEVENT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  auto sender = qobject_cast<QGamepadManager *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal =
        sender->metaObject()->indexOfSignal("gamepadButtonPressEvent(int,QGamepadManager::GamepadButton,double)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection =
            QObject::connect(sender, &QGamepadManager::gamepadButtonPressEvent,
                             [sender, indexOfCodeBlock](int arg1, QGamepadManager::GamepadButton arg2, double arg3) {
                               auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

                               if (cb != nullptr)
                               {
                                 auto pSender = Qt5xHb::Signals_return_qobject(sender, "QGAMEPADMANAGER");
                                 auto pArg1 = hb_itemPutNI(nullptr, arg1);
                                 auto pArg2 = hb_itemPutNI(nullptr, static_cast<int>(arg2));
                                 auto pArg3 = hb_itemPutND(nullptr, arg3);
                                 hb_vmEvalBlockV(cb, 4, pSender, pArg1, pArg2, pArg3);
                                 hb_itemRelease(pSender);
                                 hb_itemRelease(pArg1);
                                 hb_itemRelease(pArg2);
                                 hb_itemRelease(pArg3);
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
void gamepadButtonReleaseEvent(int deviceId, QGamepadManager::GamepadButton button)
*/
HB_FUNC_STATIC(QGAMEPADMANAGER_ONGAMEPADBUTTONRELEASEEVENT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  auto sender = qobject_cast<QGamepadManager *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal =
        sender->metaObject()->indexOfSignal("gamepadButtonReleaseEvent(int,QGamepadManager::GamepadButton)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender, &QGamepadManager::gamepadButtonReleaseEvent,
                                           [sender, indexOfCodeBlock](int arg1, QGamepadManager::GamepadButton arg2) {
                                             auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

                                             if (cb != nullptr)
                                             {
                                               auto pSender = Qt5xHb::Signals_return_qobject(sender, "QGAMEPADMANAGER");
                                               auto pArg1 = hb_itemPutNI(nullptr, arg1);
                                               auto pArg2 = hb_itemPutNI(nullptr, static_cast<int>(arg2));
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
void buttonConfigured(int deviceId, QGamepadManager::GamepadButton button)
*/
HB_FUNC_STATIC(QGAMEPADMANAGER_ONBUTTONCONFIGURED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  auto sender = qobject_cast<QGamepadManager *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("buttonConfigured(int,QGamepadManager::GamepadButton)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender, &QGamepadManager::buttonConfigured,
                                           [sender, indexOfCodeBlock](int arg1, QGamepadManager::GamepadButton arg2) {
                                             auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

                                             if (cb != nullptr)
                                             {
                                               auto pSender = Qt5xHb::Signals_return_qobject(sender, "QGAMEPADMANAGER");
                                               auto pArg1 = hb_itemPutNI(nullptr, arg1);
                                               auto pArg2 = hb_itemPutNI(nullptr, static_cast<int>(arg2));
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
void axisConfigured(int deviceId, QGamepadManager::GamepadAxis axis)
*/
HB_FUNC_STATIC(QGAMEPADMANAGER_ONAXISCONFIGURED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  auto sender = qobject_cast<QGamepadManager *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("axisConfigured(int,QGamepadManager::GamepadAxis)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender, &QGamepadManager::axisConfigured,
                                           [sender, indexOfCodeBlock](int arg1, QGamepadManager::GamepadAxis arg2) {
                                             auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

                                             if (cb != nullptr)
                                             {
                                               auto pSender = Qt5xHb::Signals_return_qobject(sender, "QGAMEPADMANAGER");
                                               auto pArg1 = hb_itemPutNI(nullptr, arg1);
                                               auto pArg2 = hb_itemPutNI(nullptr, static_cast<int>(arg2));
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
void configurationCanceled(int deviceId)
*/
HB_FUNC_STATIC(QGAMEPADMANAGER_ONCONFIGURATIONCANCELED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  auto sender = qobject_cast<QGamepadManager *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("configurationCanceled(int)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection =
            QObject::connect(sender, &QGamepadManager::configurationCanceled, [sender, indexOfCodeBlock](int arg1) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QGAMEPADMANAGER");
                auto pArg1 = hb_itemPutNI(nullptr, arg1);
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
