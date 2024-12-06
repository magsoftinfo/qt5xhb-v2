//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oModel
   LOCAL oView

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(800, 600)

   oModel := HAbstractTableModel():new()
   oModel:setRowCountCB({||1000000}) // total de linhas
   oModel:setColumnCountCB({||10000}) // total de colunas
   oModel:setCB(Qt_DisplayRole, {|nRow,nCol|"C�lula " + alltrim(str(nRow)) + "," + alltrim(str(nCol))}) // conte�do da c�lula
   oModel:setCB(Qt_ForegroundRole, {|nRow,nCol|iif(nCol / 2 == int(nCol / 2), "blue", "red")}) // cor de frente da c�lula
   oModel:setCB(Qt_BackgroundRole, {|nRow,nCol|iif(nRow / 2 == int(nRow / 2), "cyan", "yellow")}) // cor de fundo da c�lula
   oModel:setHorizontalHeaderCB(Qt_DisplayRole, {|nCol|"Coluna " + strzero(nCol, 5)}) // t�tulos das colunas
   oModel:setVerticalHeaderCB(Qt_DisplayRole, {|nRow|"Linha " + alltrim(str(nRow))}) // t�tulos das linhas

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
