/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTSERIALPORT_H
#define QT5XHB_MACROS_QTSERIALPORT_H

#define ISQSERIALPORT(n)                                    Qt5xHb::isObjectDerivedFrom(n, "QSerialPort")
#define ISQSERIALPORTINFO(n)                                Qt5xHb::isObjectDerivedFrom(n, "QSerialPortInfo")

#define PQSERIALPORT(n)                                     static_cast<QSerialPort*>(Qt5xHb::itemGetPtr(n))
#define PQSERIALPORTINFO(n)                                 static_cast<QSerialPortInfo*>(Qt5xHb::itemGetPtr(n))

#define OPQSERIALPORT(n, v)                                 HB_ISNIL(n) ? v : static_cast<QSerialPort*>(Qt5xHb::itemGetPtr(n))
#define OPQSERIALPORTINFO(n, v)                             HB_ISNIL(n) ? v : static_cast<QSerialPortInfo*>(Qt5xHb::itemGetPtr(n))

#endif /* QT5XHB_MACROS_QTSERIALPORT_H */
