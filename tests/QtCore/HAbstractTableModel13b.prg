/*

  Qt5xHb Project - Test Program

  Copyright (C) 2022 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb-v2

*/

#include "qt5xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oModel
   LOCAL oView

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Teste" )
   oWindow:resize( 800, 600 )

   oModel := HAbstractTableModel():new()
   oModel:setRowCountCB( {||100} ) // total de linhas
   oModel:setColumnCountCB( {||10} ) // total de colunas
   oModel:setCB( Qt_DisplayRole, {|nRow,nCol|"C�lula " + alltrim( str( nRow ) ) + "," + alltrim( str( nCol ) )} ) // conte�do da c�lula
   oModel:setCB( Qt_CheckStateRole, {|nRow,nCol|iif(nCol==0,Qt_Checked,NIL)} ) // checked/unchecked

   oView := QTableView():new( oWindow )
   oView:move( 10, 10 )
   oView:resize( 800 - 20, 600 - 20 )
   oView:setModel( oModel )

   oWindow:show()

   oApp:exec()

   oModel:delete()

   oWindow:delete()

   oApp:delete()

RETURN
