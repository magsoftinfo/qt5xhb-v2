#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/HCodeBlockValidatorMoc.cpp              : $(QT5XHB_SRC_DIR)/QtGui/HCodeBlockValidator.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
