/*

  Qt5xHb Project - Test Program

  Copyright (c) 2024 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb-v2

*/

#include "qt5xhb.ch"

PROCEDURE Main()

   lOCAL oApp
   LOCAL oWindow
   LOCAL oLabel
   LOCAL oFocusFrame

   oApp := QApplication():new()

   oWindow := QWidget():new()

   oLabel := QLabel():new( "QLabel", oWindow )
   oLabel:move( 20, 20 )

   oFocusFrame := QFocusFrame():new()
   oFocusFrame:setWidget( oLabel )

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
