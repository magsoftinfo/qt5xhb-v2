/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIACONTENT
REQUEST QMEDIAOBJECT
#endif

CLASS QMediaPlaylist INHERIT QObject,QMediaBindableInterface

   METHOD new
   METHOD delete
   METHOD playbackMode
   METHOD setPlaybackMode
   METHOD currentMedia
   METHOD currentIndex
   METHOD setCurrentIndex
   METHOD addMedia
   METHOD clear
   METHOD error
   METHOD errorString
   METHOD insertMedia
   METHOD isEmpty
   METHOD isReadOnly
   METHOD load
   METHOD media
   METHOD mediaCount
   METHOD nextIndex
   METHOD previousIndex
   METHOD removeMedia
   METHOD save
   METHOD mediaObject
   METHOD next
   METHOD previous
   METHOD shuffle
   METHOD moveMedia

   METHOD onCurrentIndexChanged
   METHOD onCurrentMediaChanged
   METHOD onLoadFailed
   METHOD onLoaded
   METHOD onMediaAboutToBeInserted
   METHOD onMediaAboutToBeRemoved
   METHOD onMediaChanged
   METHOD onMediaInserted
   METHOD onMediaRemoved
   METHOD onPlaybackModeChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMediaPlaylist
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QMediaPlaylist>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QMediaPlaylist>
#endif

/*
QMediaPlaylist( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    auto obj = new QMediaPlaylist( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~QMediaPlaylist()
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_DELETE )
{
  auto obj = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
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
QMediaPlaylist::PlaybackMode playbackMode() const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_PLAYBACKMODE )
{
  auto obj = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->playbackMode() );
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
void setPlaybackMode( QMediaPlaylist::PlaybackMode mode )
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_SETPLAYBACKMODE )
{
  auto obj = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setPlaybackMode( (QMediaPlaylist::PlaybackMode) hb_parni(1) );
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
QMediaContent currentMedia() const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_CURRENTMEDIA )
{
  auto obj = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QMediaContent( obj->currentMedia() );
      Qt5xHb::createReturnClass( ptr, "QMEDIACONTENT", true );
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
int currentIndex() const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_CURRENTINDEX )
{
  auto obj = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->currentIndex() );
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
void setCurrentIndex( int index )
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_SETCURRENTINDEX )
{
  auto obj = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setCurrentIndex( PINT(1) );
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
bool addMedia( const QMediaContent & content )
*/
void QMediaPlaylist_addMedia1()
{
  auto obj = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RBOOL( obj->addMedia( *PQMEDIACONTENT(1) ) );
  }
}

/*
bool addMedia( const QList<QMediaContent> & items )
*/
void QMediaPlaylist_addMedia2()
{
  auto obj = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    QList<QMediaContent> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int nLen1 = hb_arrayLen(aList1);
    for( auto i1 = 0; i1 < nLen1; i1++ )
    {
      par1 << *(QMediaContent *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    RBOOL( obj->addMedia( par1 ) );
  }
}

/*
[1]bool addMedia(const QMediaContent & content)
[2]bool addMedia(const QList<QMediaContent> & items)
*/

HB_FUNC_STATIC( QMEDIAPLAYLIST_ADDMEDIA )
{
  if( ISNUMPAR(1) && ISQMEDIACONTENT(1) )
  {
    QMediaPlaylist_addMedia1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QMediaPlaylist_addMedia2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool clear()
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_CLEAR )
{
  auto obj = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->clear() );
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
QMediaPlaylist::Error error() const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_ERROR )
{
  auto obj = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->error() );
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
QString errorString() const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_ERRORSTRING )
{
  auto obj = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->errorString() );
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
bool insertMedia( int pos, const QMediaContent & content )
*/
void QMediaPlaylist_insertMedia1()
{
  auto obj = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RBOOL( obj->insertMedia( PINT(1), *PQMEDIACONTENT(2) ) );
  }
}

/*
bool insertMedia( int pos, const QList<QMediaContent> & items )
*/
void QMediaPlaylist_insertMedia2()
{
  auto obj = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    QList<QMediaContent> par2;
    PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
    int nLen2 = hb_arrayLen(aList2);
    for( auto i2 = 0; i2 < nLen2; i2++ )
    {
      par2 << *(QMediaContent *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
    }
    RBOOL( obj->insertMedia( PINT(1), par2 ) );
  }
}

/*
bool insertMedia(int pos, const QMediaContent & content)
bool insertMedia(int pos, const QList<QMediaContent> & items)
*/

HB_FUNC_STATIC( QMEDIAPLAYLIST_INSERTMEDIA )
{
  if( ISNUMPAR(1) && ISQMEDIACONTENT(1) )
  {
    QMediaPlaylist_insertMedia1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QMediaPlaylist_insertMedia2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_ISEMPTY )
{
  auto obj = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isEmpty() );
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
bool isReadOnly() const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_ISREADONLY )
{
  auto obj = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isReadOnly() );
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
void load( const QNetworkRequest & request, const char * format = nullptr )
*/
void QMediaPlaylist_load1()
{
  auto obj = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->load( *PQNETWORKREQUEST(1), OPCONSTCHAR(2,nullptr) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void load( const QUrl & location, const char * format = nullptr )
*/
void QMediaPlaylist_load2()
{
  auto obj = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->load( *PQURL(1), OPCONSTCHAR(2,nullptr) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void load( QIODevice * device, const char * format = nullptr )
*/
void QMediaPlaylist_load3()
{
  auto obj = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->load( PQIODEVICE(1), OPCONSTCHAR(2,nullptr) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void load(const QNetworkRequest & request, const char * format = nullptr)
[2]void load(const QUrl & location, const char * format = nullptr)
[3]void load(QIODevice * device, const char * format = nullptr)
*/

HB_FUNC_STATIC( QMEDIAPLAYLIST_LOAD )
{
  if( ISBETWEEN(1,2) && ISQNETWORKREQUEST(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    QMediaPlaylist_load1();
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    QMediaPlaylist_load2();
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    QMediaPlaylist_load3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QMediaContent media( int index ) const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_MEDIA )
{
  auto obj = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      auto ptr = new QMediaContent( obj->media( PINT(1) ) );
      Qt5xHb::createReturnClass( ptr, "QMEDIACONTENT", true );
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
int mediaCount() const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_MEDIACOUNT )
{
  auto obj = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->mediaCount() );
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
int nextIndex( int steps = 1 ) const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_NEXTINDEX )
{
  auto obj = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
    {
#endif
      RINT( obj->nextIndex( OPINT(1,1) ) );
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
int previousIndex( int steps = 1 ) const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_PREVIOUSINDEX )
{
  auto obj = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
    {
#endif
      RINT( obj->previousIndex( OPINT(1,1) ) );
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
bool removeMedia( int pos )
*/
void QMediaPlaylist_removeMedia1()
{
  auto obj = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RBOOL( obj->removeMedia( PINT(1) ) );
  }
}

/*
bool removeMedia( int start, int end )
*/
void QMediaPlaylist_removeMedia2()
{
  auto obj = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RBOOL( obj->removeMedia( PINT(1), PINT(2) ) );
  }
}

/*
[1]bool removeMedia(int pos)
[2]bool removeMedia(int start, int end)
*/

HB_FUNC_STATIC( QMEDIAPLAYLIST_REMOVEMEDIA )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QMediaPlaylist_removeMedia1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QMediaPlaylist_removeMedia2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool save( const QUrl & location, const char * format = nullptr )
*/
void QMediaPlaylist_save1()
{
  auto obj = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RBOOL( obj->save( *PQURL(1), OPCONSTCHAR(2,nullptr) ) );
  }
}

/*
bool save( QIODevice * device, const char * format )
*/
void QMediaPlaylist_save2()
{
  auto obj = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RBOOL( obj->save( PQIODEVICE(1), PCONSTCHAR(2) ) );
  }
}

/*
[1]bool save(const QUrl & location, const char * format = nullptr)
[2]bool save(QIODevice * device, const char * format)
*/

HB_FUNC_STATIC( QMEDIAPLAYLIST_SAVE )
{
  if( ISBETWEEN(1,2) && ISQURL(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    QMediaPlaylist_save1();
  }
  else if( ISNUMPAR(2) && ISQIODEVICE(1) && ISCHAR(2) )
  {
    QMediaPlaylist_save2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual QMediaObject * mediaObject() const override
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_MEDIAOBJECT )
{
  auto obj = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMediaObject * ptr = obj->mediaObject();
      Qt5xHb::createReturnQObjectClass( ptr, "QMEDIAOBJECT" );
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
void next()
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_NEXT )
{
  auto obj = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->next();
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
void previous()
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_PREVIOUS )
{
  auto obj = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->previous();
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
void shuffle()
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_SHUFFLE )
{
  auto obj = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->shuffle();
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
bool moveMedia( int from, int to )
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_MOVEMEDIA )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      RBOOL( obj->moveMedia( PINT(1), PINT(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void currentIndexChanged( int position )
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_ONCURRENTINDEXCHANGED )
{
  auto sender = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("currentIndexChanged(int)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QMediaPlaylist::currentIndexChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QMEDIAPLAYLIST" );
            PHB_ITEM pArg1 = hb_itemPutNI( nullptr, arg1 );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void currentMediaChanged( const QMediaContent & content )
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_ONCURRENTMEDIACHANGED )
{
  auto sender = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("currentMediaChanged(QMediaContent)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QMediaPlaylist::currentMediaChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QMediaContent & arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QMEDIAPLAYLIST" );
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_object( (void *) &arg1, "QMEDIACONTENT" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void loadFailed()
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_ONLOADFAILED )
{
  auto sender = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("loadFailed()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QMediaPlaylist::loadFailed, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QMEDIAPLAYLIST" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void loaded()
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_ONLOADED )
{
  auto sender = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("loaded()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QMediaPlaylist::loaded, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QMEDIAPLAYLIST" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void mediaAboutToBeInserted( int start, int end )
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_ONMEDIAABOUTTOBEINSERTED )
{
  auto sender = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("mediaAboutToBeInserted(int,int)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QMediaPlaylist::mediaAboutToBeInserted, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1, int arg2) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QMEDIAPLAYLIST" );
            PHB_ITEM pArg1 = hb_itemPutNI( nullptr, arg1 );
            PHB_ITEM pArg2 = hb_itemPutNI( nullptr, arg2 );
            hb_vmEvalBlockV( cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void mediaAboutToBeRemoved( int start, int end )
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_ONMEDIAABOUTTOBEREMOVED )
{
  auto sender = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("mediaAboutToBeRemoved(int,int)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QMediaPlaylist::mediaAboutToBeRemoved, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1, int arg2) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QMEDIAPLAYLIST" );
            PHB_ITEM pArg1 = hb_itemPutNI( nullptr, arg1 );
            PHB_ITEM pArg2 = hb_itemPutNI( nullptr, arg2 );
            hb_vmEvalBlockV( cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void mediaChanged( int start, int end )
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_ONMEDIACHANGED )
{
  auto sender = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("mediaChanged(int,int)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QMediaPlaylist::mediaChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1, int arg2) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QMEDIAPLAYLIST" );
            PHB_ITEM pArg1 = hb_itemPutNI( nullptr, arg1 );
            PHB_ITEM pArg2 = hb_itemPutNI( nullptr, arg2 );
            hb_vmEvalBlockV( cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void mediaInserted( int start, int end )
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_ONMEDIAINSERTED )
{
  auto sender = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("mediaInserted(int,int)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QMediaPlaylist::mediaInserted, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1, int arg2) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QMEDIAPLAYLIST" );
            PHB_ITEM pArg1 = hb_itemPutNI( nullptr, arg1 );
            PHB_ITEM pArg2 = hb_itemPutNI( nullptr, arg2 );
            hb_vmEvalBlockV( cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void mediaRemoved( int start, int end )
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_ONMEDIAREMOVED )
{
  auto sender = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("mediaRemoved(int,int)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QMediaPlaylist::mediaRemoved, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1, int arg2) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QMEDIAPLAYLIST" );
            PHB_ITEM pArg1 = hb_itemPutNI( nullptr, arg1 );
            PHB_ITEM pArg2 = hb_itemPutNI( nullptr, arg2 );
            hb_vmEvalBlockV( cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void playbackModeChanged( QMediaPlaylist::PlaybackMode mode )
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_ONPLAYBACKMODECHANGED )
{
  auto sender = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("playbackModeChanged(QMediaPlaylist::PlaybackMode)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QMediaPlaylist::playbackModeChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (QMediaPlaylist::PlaybackMode arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QMEDIAPLAYLIST" );
            PHB_ITEM pArg1 = hb_itemPutNI( nullptr, (int) arg1 );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

#pragma ENDDUMP
