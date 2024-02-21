/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTSCRIPT_H
#define QT5XHB_MACROS_QTSCRIPT_H

#define ISQSCRIPTABLE(n)                                    Qt5xHb::isObjectDerivedFrom(n, "QScriptable")
#define ISQSCRIPTCLASS(n)                                   Qt5xHb::isObjectDerivedFrom(n, "QScriptClass")
#define ISQSCRIPTCLASSPROPERTYITERATOR(n)                   Qt5xHb::isObjectDerivedFrom(n, "QScriptClassPropertyIterator")
#define ISQSCRIPTCONTEXT(n)                                 Qt5xHb::isObjectDerivedFrom(n, "QScriptContext")
#define ISQSCRIPTCONTEXTINFO(n)                             Qt5xHb::isObjectDerivedFrom(n, "QScriptContextInfo")
#define ISQSCRIPTENGINE(n)                                  Qt5xHb::isObjectDerivedFrom(n, "QScriptEngine")
#define ISQSCRIPTENGINEAGENT(n)                             Qt5xHb::isObjectDerivedFrom(n, "QScriptEngineAgent")
#define ISQSCRIPTEXTENSIONPLUGIN(n)                         Qt5xHb::isObjectDerivedFrom(n, "QScriptExtensionPlugin")
#define ISQSCRIPTPROGRAM(n)                                 Qt5xHb::isObjectDerivedFrom(n, "QScriptProgram")
#define ISQSCRIPTSTRING(n)                                  Qt5xHb::isObjectDerivedFrom(n, "QScriptString")
#define ISQSCRIPTSYNTAXCHECKRESULT(n)                       Qt5xHb::isObjectDerivedFrom(n, "QScriptSyntaxCheckResult")
#define ISQSCRIPTVALUE(n)                                   Qt5xHb::isObjectDerivedFrom(n, "QScriptValue")
#define ISQSCRIPTVALUEITERATOR(n)                           Qt5xHb::isObjectDerivedFrom(n, "QScriptValueIterator")

#define PQSCRIPTABLE(n)                                     static_cast<QScriptable*>(Qt5xHb::itemGetPtr(n))
#define PQSCRIPTCLASS(n)                                    static_cast<QScriptClass*>(Qt5xHb::itemGetPtr(n))
#define PQSCRIPTCLASSPROPERTYITERATOR(n)                    static_cast<QScriptClassPropertyIterator*>(Qt5xHb::itemGetPtr(n))
#define PQSCRIPTCONTEXT(n)                                  static_cast<QScriptContext*>(Qt5xHb::itemGetPtr(n))
#define PQSCRIPTCONTEXTINFO(n)                              static_cast<QScriptContextInfo*>(Qt5xHb::itemGetPtr(n))
#define PQSCRIPTENGINE(n)                                   static_cast<QScriptEngine*>(Qt5xHb::itemGetPtr(n))
#define PQSCRIPTENGINEAGENT(n)                              static_cast<QScriptEngineAgent*>(Qt5xHb::itemGetPtr(n))
#define PQSCRIPTEXTENSIONPLUGIN(n)                          static_cast<QScriptExtensionPlugin*>(Qt5xHb::itemGetPtr(n))
#define PQSCRIPTPROGRAM(n)                                  static_cast<QScriptProgram*>(Qt5xHb::itemGetPtr(n))
#define PQSCRIPTSTRING(n)                                   static_cast<QScriptString*>(Qt5xHb::itemGetPtr(n))
#define PQSCRIPTSYNTAXCHECKRESULT(n)                        static_cast<QScriptSyntaxCheckResult*>(Qt5xHb::itemGetPtr(n))
#define PQSCRIPTVALUE(n)                                    static_cast<QScriptValue*>(Qt5xHb::itemGetPtr(n))
#define PQSCRIPTVALUEITERATOR(n)                            static_cast<QScriptValueIterator*>(Qt5xHb::itemGetPtr(n))

#define OPQSCRIPTABLE(n, v)                                 HB_ISNIL(n) ? v : static_cast<QScriptable*>(Qt5xHb::itemGetPtr(n))
#define OPQSCRIPTCLASS(n, v)                                HB_ISNIL(n) ? v : static_cast<QScriptClass*>(Qt5xHb::itemGetPtr(n))
#define OPQSCRIPTCLASSPROPERTYITERATOR(n, v)                HB_ISNIL(n) ? v : static_cast<QScriptClassPropertyIterator*>(Qt5xHb::itemGetPtr(n))
#define OPQSCRIPTCONTEXT(n, v)                              HB_ISNIL(n) ? v : static_cast<QScriptContext*>(Qt5xHb::itemGetPtr(n))
#define OPQSCRIPTCONTEXTINFO(n, v)                          HB_ISNIL(n) ? v : static_cast<QScriptContextInfo*>(Qt5xHb::itemGetPtr(n))
#define OPQSCRIPTENGINE(n, v)                               HB_ISNIL(n) ? v : static_cast<QScriptEngine*>(Qt5xHb::itemGetPtr(n))
#define OPQSCRIPTENGINEAGENT(n, v)                          HB_ISNIL(n) ? v : static_cast<QScriptEngineAgent*>(Qt5xHb::itemGetPtr(n))
#define OPQSCRIPTEXTENSIONPLUGIN(n, v)                      HB_ISNIL(n) ? v : static_cast<QScriptExtensionPlugin*>(Qt5xHb::itemGetPtr(n))
#define OPQSCRIPTPROGRAM(n, v)                              HB_ISNIL(n) ? v : static_cast<QScriptProgram*>(Qt5xHb::itemGetPtr(n))
#define OPQSCRIPTSTRING(n, v)                               HB_ISNIL(n) ? v : static_cast<QScriptString*>(Qt5xHb::itemGetPtr(n))
#define OPQSCRIPTSYNTAXCHECKRESULT(n, v)                    HB_ISNIL(n) ? v : static_cast<QScriptSyntaxCheckResult*>(Qt5xHb::itemGetPtr(n))
#define OPQSCRIPTVALUE(n, v)                                HB_ISNIL(n) ? v : static_cast<QScriptValue*>(Qt5xHb::itemGetPtr(n))
#define OPQSCRIPTVALUEITERATOR(n, v)                        HB_ISNIL(n) ? v : static_cast<QScriptValueIterator*>(Qt5xHb::itemGetPtr(n))

#endif /* QT5XHB_MACROS_QTSCRIPT_H */
