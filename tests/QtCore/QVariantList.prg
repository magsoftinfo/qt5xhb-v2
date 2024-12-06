//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oVariant
   LOCAL aVariantList
   LOCAL n

   oVariant := QVariant():new19({"um", "dois", "tres", "quatro", "cinco"})

   aVariantList := oVariant:toList()

   ? len(aVariantList)

   FOR n := 1 TO len(aVariantList)
      ? aVariantList[n]:toString()
   NEXT n

RETURN NIL
