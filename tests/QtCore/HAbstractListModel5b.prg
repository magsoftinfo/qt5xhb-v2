/*

  Qt5xHb Project - Test Program

  Copyright (c) 2024 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb-v2

*/

#include "qt5xhb.ch"

#define NUMR_ROWS 100

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oModel
   LOCAL oView
   LOCAL nRow
   LOCAL aData

   aData := array( NUMR_ROWS )
   FOR nRow := 1 TO NUMR_ROWS
      aData[ nRow ] := { "Linha " + alltrim( str( nRow ) ), Qt_Checked }
   NEXT nRow

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Teste" )
   oWindow:resize( 800, 600 )

   oModel := HAbstractListModel():new()
   oModel:setRowCountCB( {||NUMR_ROWS} ) // total de linhas
   oModel:setCB( Qt_DisplayRole, {|nRow|aData[ nRow + 1 ][ 1 ]} ) // conte�do da linha
   oModel:setCB( Qt_EditRole, {|nRow|aData[ nRow + 1 ][ 1 ]} ) // conte�do para edi��o da linha
   oModel:setCB( Qt_CheckStateRole, {|nRow|aData[ nRow + 1 ][ 2 ]} ) // checked/unchecked
   oModel:setFlagsCB( {||Qt_ItemIsSelectable + Qt_ItemIsEditable + Qt_ItemIsEnabled + Qt_ItemIsUserCheckable} ) // flags
   oModel:setSetDataCB( {|nRow,oVariant,nRole|
      IF nRole == Qt_EditRole
         aData[ nRow + 1, 1 ] := oVariant:toString()
         RETURN .T.
      ENDIF
      IF nRole == Qt_CheckStateRole
         aData[ nRow + 1, 2 ] := oVariant:toInt()
         RETURN .T.
      ENDIF
      } ) // grava conte�do da linha se n�o for vazio

   oView := QListView():new( oWindow )
   oView:move( 10, 10 )
   oView:resize( 800 - 20, 600 - 20 )
   oView:setModel( oModel )

   oWindow:show()

   oApp:exec()

   oModel:delete()

   oWindow:delete()

   oApp:delete()

RETURN
