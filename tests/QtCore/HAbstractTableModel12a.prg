//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt5xhb.ch"

#define NUMR_ROWS 100
#define NUMR_COLS 10

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oModel
   LOCAL oView
   LOCAL nRow
   LOCAL nCol
   LOCAL aData

   aData := array(NUMR_ROWS, 10)
   FOR nRow := 1 TO NUMR_ROWS
      FOR nCol := 1 TO NUMR_COLS
         aData[nRow, nCol] := "C�lula " + alltrim(str(nRow)) + "," + alltrim(str(nCol))
      NEXT nCol
   NEXT nRow

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(800, 600)

   oModel := HAbstractTableModel():new()
   oModel:setRowCountCB({||NUMR_ROWS}) // total de linhas
   oModel:setColumnCountCB({||NUMR_COLS}) // total de colunas
   oModel:setDisplayRoleCB({|nRow,nCol|aData[nRow + 1, nCol + 1]}) // conte�do da c�lula
   oModel:setEditRoleCB({|nRow,nCol|aData[nRow + 1, nCol + 1]}) // conte�do para edi��o da c�lula
   oModel:setFlagsCB({||Qt_ItemIsSelectable + Qt_ItemIsEditable + Qt_ItemIsEnabled}) // flags
   oModel:setSetDataCB({|nRow,nCol,oVariant|aData[nRow + 1, nCol + 1] := oVariant:toString(),.T.}) // grava conte�do da c�lula se n�o for vazio

   oView := QTableView():new(oWindow)
   oView:move(10, 10)
   oView:resize(800 - 20, 600 - 20)
   oView:setModel(oModel)

   oWindow:show()

   oApp:exec()

   oModel:delete()

   oWindow:delete()

   oApp:delete()

RETURN NIL
