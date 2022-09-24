/*

  Qt5xHb/C++11 Project - Test Program

  Copyright (C) 2021 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb-cpp11

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
   oModel:setRowCountCB( {||1000000} ) // total de linhas
   oModel:setColumnCountCB( {||10000} ) // total de colunas
   oModel:setCB( Qt_DisplayRole, {|nRow,nCol|"C�lula " + alltrim( str( nRow ) ) + "," + alltrim( str( nCol ) )} ) // conte�do da c�lula
   oModel:setHorizontalHeaderCB( Qt_DisplayRole, {|nCol|"Coluna " + strzero( nCol, 5 )} ) // t�tulos das colunas
   oModel:setVerticalHeaderCB( Qt_DisplayRole, {|nRow|"Linha " + alltrim( str( nRow ) )} ) // t�tulos das linhas

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