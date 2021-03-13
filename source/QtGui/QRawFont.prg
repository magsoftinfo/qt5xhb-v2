/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QIMAGE
REQUEST QPAINTERPATH
REQUEST QPOINTF
REQUEST QRECTF
#endif

CLASS QRawFont

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD swap
   METHOD familyName
   METHOD styleName
   METHOD style
   METHOD weight
   METHOD glyphIndexesForString
   METHOD advancesForGlyphIndexes
   METHOD alphaMapForGlyph
   METHOD pathForGlyph
   METHOD boundingRect
   METHOD setPixelSize
   METHOD pixelSize
   METHOD hintingPreference
   METHOD ascent
   METHOD descent
   METHOD leading
   METHOD xHeight
   METHOD averageCharWidth
   METHOD maxCharWidth
   METHOD lineThickness
   METHOD underlinePosition
   METHOD unitsPerEm
   METHOD loadFromFile
   METHOD loadFromData
   METHOD supportsCharacter
   METHOD supportedWritingSystems
   METHOD fontTable
   METHOD fromFont

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QRawFont
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QRawFont>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtGui/QRawFont>
#endif

#include <QtGui/QImage>
#include <QtGui/QPainterPath>

/*
QRawFont()
*/
void QRawFont_new1()
{
  auto obj = new QRawFont();
  Qt5xHb::returnNewObject( obj, true );
}

/*
QRawFont( const QString & fileName, qreal pixelSize, QFont::HintingPreference hintingPreference = QFont::PreferDefaultHinting )
*/
void QRawFont_new2()
{
  auto obj = new QRawFont( PQSTRING(1), PQREAL(2), HB_ISNIL(3)? (QFont::HintingPreference) QFont::PreferDefaultHinting : (QFont::HintingPreference) hb_parni(3) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QRawFont( const QByteArray & fontData, qreal pixelSize, QFont::HintingPreference hintingPreference = QFont::PreferDefaultHinting )
*/
void QRawFont_new3()
{
  auto obj = new QRawFont( *PQBYTEARRAY(1), PQREAL(2), HB_ISNIL(3)? (QFont::HintingPreference) QFont::PreferDefaultHinting : (QFont::HintingPreference) hb_parni(3) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QRawFont( const QRawFont & other )
*/
void QRawFont_new4()
{
  auto obj = new QRawFont( *PQRAWFONT(1) );
  Qt5xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QRAWFONT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QRawFont_new1();
  }
  else if( ISBETWEEN(2,3) && HB_ISCHAR(1) && HB_ISNUM(2) && (HB_ISNUM(3)||HB_ISNIL(3)) )
  {
    QRawFont_new2();
  }
  else if( ISBETWEEN(2,3) && ISQBYTEARRAY(1) && HB_ISNUM(2) && (HB_ISNUM(3)||HB_ISNIL(3)) )
  {
    QRawFont_new3();
  }
  else if( ISNUMPAR(1) && ISQRAWFONT(1) )
  {
    QRawFont_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QRAWFONT_DELETE )
{
  auto obj = (QRawFont *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, nullptr );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QRAWFONT_ISVALID )
{
  auto obj = (QRawFont *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void swap( QRawFont & other )
*/
HB_FUNC_STATIC( QRAWFONT_SWAP )
{
  auto obj = (QRawFont *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQRAWFONT(1) )
    {
#endif
      obj->swap( *PQRAWFONT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString familyName() const
*/
HB_FUNC_STATIC( QRAWFONT_FAMILYNAME )
{
  auto obj = (QRawFont *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->familyName() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString styleName() const
*/
HB_FUNC_STATIC( QRAWFONT_STYLENAME )
{
  auto obj = (QRawFont *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->styleName() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QFont::Style style() const
*/
HB_FUNC_STATIC( QRAWFONT_STYLE )
{
  auto obj = (QRawFont *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->style() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int weight() const
*/
HB_FUNC_STATIC( QRAWFONT_WEIGHT )
{
  auto obj = (QRawFont *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->weight() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QVector<quint32> glyphIndexesForString( const QString & text ) const
*/
HB_FUNC_STATIC( QRAWFONT_GLYPHINDEXESFORSTRING )
{
  auto obj = (QRawFont *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      QVector<quint32> list = obj->glyphIndexesForString( PQSTRING(1) );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      for( auto i = 0; i < list.count(); i++ )
      {
        PHB_ITEM pItem = hb_itemPutNI( nullptr, (quint32) list[i] );
        hb_arrayAddForward( pArray, pItem );
        hb_itemRelease(pItem);
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QVector<QPointF> advancesForGlyphIndexes( const QVector<quint32> & glyphIndexes ) const
*/
void QRawFont_advancesForGlyphIndexes1()
{
  auto obj = (QRawFont *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    QVector<quint32> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int nLen1 = hb_arrayLen(aList1);
    quint32 temp1;
    for( auto i1 = 0; i1 < nLen1; i1++ )
    {
      temp1 = (quint32) hb_arrayGetNI(aList1, i1+1);
      par1 << temp1;
    }
    QVector<QPointF> list = obj->advancesForGlyphIndexes( par1 );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QPOINTF" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    if( pDynSym )
    {
      for( auto i = 0; i < list.count(); i++ )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( nullptr );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( nullptr );
        hb_itemPutPtr( pItem, (QPointF *) new QPointF( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( nullptr );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    else
    {
      hb_errRT_BASE( EG_NOFUNC, 1001, nullptr, "QPOINTF", HB_ERR_ARGS_BASEPARAMS );
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
bool advancesForGlyphIndexes(const quint32 *glyphIndexes, QPointF *advances, int numGlyphs) const
*/

HB_FUNC_STATIC( QRAWFONT_ADVANCESFORGLYPHINDEXES )
{
  if( ISNUMPAR(1)  && HB_ISARRAY(1) )
  {
    QRawFont_advancesForGlyphIndexes1();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool glyphIndexesForChars(const QChar *chars, int numChars, quint32 *glyphIndexes, int *numGlyphs) const
*/
/*
QImage alphaMapForGlyph( quint32 glyphIndex, QRawFont::AntialiasingType antialiasingType = QRawFont::SubPixelAntialiasing, const QTransform & transform = QTransform() ) const
*/
HB_FUNC_STATIC( QRAWFONT_ALPHAMAPFORGLYPH )
{
  auto obj = (QRawFont *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && HB_ISNUM(1) && (HB_ISNUM(2)||HB_ISNIL(2)) && (ISQTRANSFORM(3)||HB_ISNIL(3)) )
    {
#endif
      auto ptr = new QImage( obj->alphaMapForGlyph( PQUINT32(1), HB_ISNIL(2)? (QRawFont::AntialiasingType) QRawFont::SubPixelAntialiasing : (QRawFont::AntialiasingType) hb_parni(2), HB_ISNIL(3)? QTransform() : *(QTransform *) Qt5xHb::itemGetPtr(3) ) );
      Qt5xHb::createReturnClass( ptr, "QIMAGE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QPainterPath pathForGlyph( quint32 glyphIndex ) const
*/
HB_FUNC_STATIC( QRAWFONT_PATHFORGLYPH )
{
  auto obj = (QRawFont *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      auto ptr = new QPainterPath( obj->pathForGlyph( PQUINT32(1) ) );
      Qt5xHb::createReturnClass( ptr, "QPAINTERPATH", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QRectF boundingRect( quint32 glyphIndex ) const
*/
HB_FUNC_STATIC( QRAWFONT_BOUNDINGRECT )
{
  auto obj = (QRawFont *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      auto ptr = new QRectF( obj->boundingRect( PQUINT32(1) ) );
      Qt5xHb::createReturnClass( ptr, "QRECTF", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setPixelSize( qreal pixelSize )
*/
HB_FUNC_STATIC( QRAWFONT_SETPIXELSIZE )
{
  auto obj = (QRawFont *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setPixelSize( PQREAL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal pixelSize() const
*/
HB_FUNC_STATIC( QRAWFONT_PIXELSIZE )
{
  auto obj = (QRawFont *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->pixelSize() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QFont::HintingPreference hintingPreference() const
*/
HB_FUNC_STATIC( QRAWFONT_HINTINGPREFERENCE )
{
  auto obj = (QRawFont *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->hintingPreference() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
qreal ascent() const
*/
HB_FUNC_STATIC( QRAWFONT_ASCENT )
{
  auto obj = (QRawFont *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->ascent() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
qreal descent() const
*/
HB_FUNC_STATIC( QRAWFONT_DESCENT )
{
  auto obj = (QRawFont *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->descent() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
qreal leading() const
*/
HB_FUNC_STATIC( QRAWFONT_LEADING )
{
  auto obj = (QRawFont *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->leading() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
qreal xHeight() const
*/
HB_FUNC_STATIC( QRAWFONT_XHEIGHT )
{
  auto obj = (QRawFont *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->xHeight() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
qreal averageCharWidth() const
*/
HB_FUNC_STATIC( QRAWFONT_AVERAGECHARWIDTH )
{
  auto obj = (QRawFont *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->averageCharWidth() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
qreal maxCharWidth() const
*/
HB_FUNC_STATIC( QRAWFONT_MAXCHARWIDTH )
{
  auto obj = (QRawFont *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->maxCharWidth() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
qreal lineThickness() const
*/
HB_FUNC_STATIC( QRAWFONT_LINETHICKNESS )
{
  auto obj = (QRawFont *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->lineThickness() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
qreal underlinePosition() const
*/
HB_FUNC_STATIC( QRAWFONT_UNDERLINEPOSITION )
{
  auto obj = (QRawFont *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->underlinePosition() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
qreal unitsPerEm() const
*/
HB_FUNC_STATIC( QRAWFONT_UNITSPEREM )
{
  auto obj = (QRawFont *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->unitsPerEm() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void loadFromFile( const QString & fileName, qreal pixelSize, QFont::HintingPreference hintingPreference )
*/
HB_FUNC_STATIC( QRAWFONT_LOADFROMFILE )
{
  auto obj = (QRawFont *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && HB_ISCHAR(1) && HB_ISNUM(2) && HB_ISNUM(3) )
    {
#endif
      obj->loadFromFile( PQSTRING(1), PQREAL(2), (QFont::HintingPreference) hb_parni(3) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void loadFromData( const QByteArray & fontData, qreal pixelSize, QFont::HintingPreference hintingPreference )
*/
HB_FUNC_STATIC( QRAWFONT_LOADFROMDATA )
{
  auto obj = (QRawFont *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQBYTEARRAY(1) && HB_ISNUM(2) && HB_ISNUM(3) )
    {
#endif
      obj->loadFromData( *PQBYTEARRAY(1), PQREAL(2), (QFont::HintingPreference) hb_parni(3) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool supportsCharacter( uint ucs4 ) const
*/
void QRawFont_supportsCharacter1()
{
  auto obj = (QRawFont *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RBOOL( obj->supportsCharacter( PUINT(1) ) );
  }
}

/*
bool supportsCharacter( QChar character ) const
*/
void QRawFont_supportsCharacter2()
{
  auto obj = (QRawFont *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RBOOL( obj->supportsCharacter( *PQCHAR(1) ) );
  }
}

HB_FUNC_STATIC( QRAWFONT_SUPPORTSCHARACTER )
{
  if( ISNUMPAR(1) && HB_ISARRAY(1) )
  {
    QRawFont_supportsCharacter1();
  }
  else if( ISNUMPAR(1) && ISQCHAR(1) )
  {
    QRawFont_supportsCharacter2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QList<QFontDatabase::WritingSystem> supportedWritingSystems() const
*/
HB_FUNC_STATIC( QRAWFONT_SUPPORTEDWRITINGSYSTEMS )
{
  auto obj = (QRawFont *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QFontDatabase::WritingSystem> list = obj->supportedWritingSystems();
      PHB_ITEM pArray = hb_itemArrayNew(0);
      for( auto i = 0; i < list.count(); i++ )
      {
        PHB_ITEM pItem = hb_itemPutNI( nullptr, (int) list[i] );
        hb_arrayAddForward( pArray, pItem );
        hb_itemRelease(pItem);
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QByteArray fontTable( const char * tagName ) const
*/
HB_FUNC_STATIC( QRAWFONT_FONTTABLE )
{
  auto obj = (QRawFont *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      auto ptr = new QByteArray( obj->fontTable( PCONSTCHAR(1) ) );
      Qt5xHb::createReturnClass( ptr, "QBYTEARRAY", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
static QRawFont fromFont( const QFont & font, QFontDatabase::WritingSystem writingSystem = QFontDatabase::Any )
*/
HB_FUNC_STATIC( QRAWFONT_FROMFONT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(1,2) && ISQFONT(1) && (HB_ISNUM(2)||HB_ISNIL(2)) )
  {
#endif
    auto ptr = new QRawFont( QRawFont::fromFont( *PQFONT(1), HB_ISNIL(2)? (QFontDatabase::WritingSystem) QFontDatabase::Any : (QFontDatabase::WritingSystem) hb_parni(2) ) );
    Qt5xHb::createReturnClass( ptr, "QRAWFONT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QRAWFONT_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( nullptr, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( nullptr, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QRAWFONT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QRAWFONT_NEWFROM );
}

HB_FUNC_STATIC( QRAWFONT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QRAWFONT_NEWFROM );
}

HB_FUNC_STATIC( QRAWFONT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QRAWFONT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( nullptr, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
