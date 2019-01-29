/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGLCOLORMAP
REQUEST QGLCONTEXT
REQUEST QGLFORMAT
REQUEST QIMAGE
REQUEST QPIXMAP
#endif

CLASS QGLWidget INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD bindTexture
   METHOD colormap
   METHOD context
   METHOD deleteTexture
   METHOD doneCurrent
   METHOD doubleBuffer
   METHOD drawTexture
   METHOD format
   METHOD grabFrameBuffer
   METHOD isSharing
   METHOD isValid
   METHOD makeCurrent
   METHOD makeOverlayCurrent
   METHOD overlayContext
   METHOD qglClearColor
   METHOD qglColor
   METHOD renderPixmap
   METHOD setColormap
   METHOD setMouseTracking
   METHOD swapBuffers
   METHOD updateGL
   METHOD updateOverlayGL
   METHOD convertToGLFormat

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGLWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGLWidget>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals3.h"

#ifdef __XHARBOUR__
#include <QGLWidget>
#endif

/*
QGLWidget ( QWidget * parent = nullptr, const QGLWidget * shareWidget = nullptr, Qt::WindowFlags f = 0 )
*/
void QGLWidget_new1 ()
{
  QGLWidget * o = new QGLWidget ( OPQWIDGET(1,nullptr), OPQGLWIDGET(2,nullptr), ISNIL(3)? (Qt::WindowFlags) 0 : (Qt::WindowFlags) hb_parni(3) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QGLWidget ( QGLContext * context, QWidget * parent = nullptr, const QGLWidget * shareWidget = nullptr, Qt::WindowFlags f = 0 )
*/
void QGLWidget_new2 ()
{
  QGLWidget * o = new QGLWidget ( PQGLCONTEXT(1), OPQWIDGET(2,nullptr), OPQGLWIDGET(3,nullptr), ISNIL(4)? (Qt::WindowFlags) 0 : (Qt::WindowFlags) hb_parni(4) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QGLWidget ( const QGLFormat & format, QWidget * parent = nullptr, const QGLWidget * shareWidget = nullptr, Qt::WindowFlags f = 0 )
*/
void QGLWidget_new3 ()
{
  QGLWidget * o = new QGLWidget ( *PQGLFORMAT(1), OPQWIDGET(2,nullptr), OPQGLWIDGET(3,nullptr), ISNIL(4)? (Qt::WindowFlags) 0 : (Qt::WindowFlags) hb_parni(4) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]QGLWidget ( QWidget * parent = nullptr, const QGLWidget * shareWidget = nullptr, Qt::WindowFlags f = 0 )
//[2]QGLWidget ( QGLContext * context, QWidget * parent = nullptr, const QGLWidget * shareWidget = nullptr, Qt::WindowFlags f = 0 )
//[3]QGLWidget ( const QGLFormat & format, QWidget * parent = nullptr, const QGLWidget * shareWidget = nullptr, Qt::WindowFlags f = 0 )

HB_FUNC_STATIC( QGLWIDGET_NEW )
{
  if( ISBETWEEN(0,3) && ISOPTQWIDGET(1) && (ISQGLWIDGET(2)||ISNIL(2)) && ISOPTNUM(3) )
  {
    QGLWidget_new1();
  }
  else if( ISBETWEEN(1,4) && ISQGLCONTEXT(1) && ISOPTQWIDGET(2) && (ISQGLWIDGET(3)||ISNIL(3)) && ISOPTNUM(4) )
  {
    QGLWidget_new2();
  }
  else if( ISBETWEEN(1,4) && ISQGLFORMAT(1) && ISOPTQWIDGET(2) && (ISQGLWIDGET(3)||ISNIL(3)) && ISOPTNUM(4) )
  {
    QGLWidget_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGLWIDGET_DELETE )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
GLuint bindTexture ( const QImage & image, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
*/
void QGLWidget_bindTexture1 ()
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      RGLUINT( obj->bindTexture ( *PQIMAGE(1), OPGLENUM(2,GL_TEXTURE_2D), OPGLINT(3,GL_RGBA) ) );
  }
}

/*
GLuint bindTexture ( const QPixmap & pixmap, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
*/
void QGLWidget_bindTexture2 ()
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      RGLUINT( obj->bindTexture ( *PQPIXMAP(1), OPGLENUM(2,GL_TEXTURE_2D), OPGLINT(3,GL_RGBA) ) );
  }
}

/*
GLuint bindTexture ( const QImage & image, GLenum target, GLint format, QGLContext::BindOptions options )
*/
void QGLWidget_bindTexture3 ()
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      RGLUINT( obj->bindTexture ( *PQIMAGE(1), PGLENUM(2), PGLINT(3), (QGLContext::BindOptions) hb_parni(4) ) );
  }
}

/*
GLuint bindTexture ( const QPixmap & pixmap, GLenum target, GLint format, QGLContext::BindOptions options )
*/
void QGLWidget_bindTexture4 ()
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      RGLUINT( obj->bindTexture ( *PQPIXMAP(1), PGLENUM(2), PGLINT(3), (QGLContext::BindOptions) hb_parni(4) ) );
  }
}

/*
GLuint bindTexture ( const QString & fileName )
*/
void QGLWidget_bindTexture5 ()
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      RGLUINT( obj->bindTexture ( PQSTRING(1) ) );
  }
}

//[1]GLuint bindTexture(const QImage & image, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA)
//[2]GLuint bindTexture(const QPixmap & pixmap, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA)
//[3]GLuint bindTexture(const QImage & image, GLenum target, GLint format, QGLContext::BindOptions options)
//[4]GLuint bindTexture(const QPixmap & pixmap, GLenum target, GLint format, QGLContext::BindOptions options)
//[5]GLuint bindTexture(const QString & fileName)

HB_FUNC_STATIC( QGLWIDGET_BINDTEXTURE )
{
  if( ISBETWEEN(1,3) && ISQIMAGE(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    QGLWidget_bindTexture1();
  }
  else if( ISBETWEEN(1,3) && ISQPIXMAP(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    QGLWidget_bindTexture2();
  }
  else if( ISBETWEEN(3,4) && ISQIMAGE(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) )
  {
    QGLWidget_bindTexture3();
  }
  else if( ISBETWEEN(3,4) && ISQPIXMAP(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) )
  {
    QGLWidget_bindTexture4();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QGLWidget_bindTexture5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
const QGLColormap & colormap () const
*/
HB_FUNC_STATIC( QGLWIDGET_COLORMAP )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QGLColormap * ptr = &obj->colormap ();
      _qt5xhb_createReturnClass ( ptr, "QGLCOLORMAP", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
const QGLContext * context () const
*/
HB_FUNC_STATIC( QGLWIDGET_CONTEXT )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QGLContext * ptr = obj->context ();
      _qt5xhb_createReturnClass ( ptr, "QGLCONTEXT", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void deleteTexture ( GLuint id )
*/
HB_FUNC_STATIC( QGLWIDGET_DELETETEXTURE )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->deleteTexture ( PGLUINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void doneCurrent ()
*/
HB_FUNC_STATIC( QGLWIDGET_DONECURRENT )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->doneCurrent ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool doubleBuffer () const
*/
HB_FUNC_STATIC( QGLWIDGET_DOUBLEBUFFER )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->doubleBuffer () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/
void QGLWidget_drawTexture1 ()
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->drawTexture ( *PQRECTF(1), PGLUINT(2), OPGLENUM(3,GL_TEXTURE_2D) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/
void QGLWidget_drawTexture2 ()
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->drawTexture ( *PQPOINTF(1), PGLUINT(2), OPGLENUM(3,GL_TEXTURE_2D) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
//[2]void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )

HB_FUNC_STATIC( QGLWIDGET_DRAWTEXTURE )
{
  if( ISBETWEEN(2,3) && ISQRECTF(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QGLWidget_drawTexture1();
  }
  else if( ISBETWEEN(2,3) && ISQPOINTF(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QGLWidget_drawTexture2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QGLFormat format () const
*/
HB_FUNC_STATIC( QGLWIDGET_FORMAT )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QGLFormat * ptr = new QGLFormat( obj->format () );
      _qt5xhb_createReturnClass ( ptr, "QGLFORMAT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QImage grabFrameBuffer ( bool withAlpha = false )
*/
HB_FUNC_STATIC( QGLWIDGET_GRABFRAMEBUFFER )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
#endif
      QImage * ptr = new QImage( obj->grabFrameBuffer ( OPBOOL(1,false) ) );
      _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isSharing () const
*/
HB_FUNC_STATIC( QGLWIDGET_ISSHARING )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isSharing () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QGLWIDGET_ISVALID )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void makeCurrent ()
*/
HB_FUNC_STATIC( QGLWIDGET_MAKECURRENT )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->makeCurrent ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void makeOverlayCurrent ()
*/
HB_FUNC_STATIC( QGLWIDGET_MAKEOVERLAYCURRENT )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->makeOverlayCurrent ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
const QGLContext * overlayContext () const
*/
HB_FUNC_STATIC( QGLWIDGET_OVERLAYCONTEXT )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QGLContext * ptr = obj->overlayContext ();
      _qt5xhb_createReturnClass ( ptr, "QGLCONTEXT", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void qglClearColor ( const QColor & c ) const
*/
HB_FUNC_STATIC( QGLWIDGET_QGLCLEARCOLOR )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
#endif
      obj->qglClearColor ( ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1)) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void qglColor ( const QColor & c ) const
*/
HB_FUNC_STATIC( QGLWIDGET_QGLCOLOR )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
#endif
      obj->qglColor ( ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1)) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPixmap renderPixmap ( int w = 0, int h = 0, bool useContext = false )
*/
HB_FUNC_STATIC( QGLWIDGET_RENDERPIXMAP )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,3) && ISOPTNUM(1) && ISOPTNUM(2) && ISOPTLOG(3) )
    {
#endif
      QPixmap * ptr = new QPixmap( obj->renderPixmap ( OPINT(1,0), OPINT(2,0), OPBOOL(3,false) ) );
      _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

//[1]void renderText ( int x, int y, const QString & str, const QFont & font = QFont(), int listBase = 2000 )
//[2]void renderText ( double x, double y, double z, const QString & str, const QFont & font = QFont(), int listBase = 2000 )

// HB_FUNC_STATIC( QGLWIDGET_RENDERTEXT ) // TODO: implementar
// {
//   if( ISBETWEEN(3,5) && ISNUM(1) && ISNUM(2) && ISCHAR(3) && (ISQFONT(4)||ISNIL(4)) && ISOPTNUM(5) )
//   {
//     HB_FUNC_EXEC( QGLWIDGET_RENDERTEXT1 );
//   }
//   else if( ISBETWEEN(4,6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISCHAR(4) && (ISQFONT(5)||ISNIL(5)) && ISOPTNUM(6) )
//   {
//     HB_FUNC_EXEC( QGLWIDGET_RENDERTEXT2 );
//   }
// }

/*
void setColormap ( const QGLColormap & cmap )
*/
HB_FUNC_STATIC( QGLWIDGET_SETCOLORMAP )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGLCOLORMAP(1) )
    {
#endif
      obj->setColormap ( *PQGLCOLORMAP(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMouseTracking ( bool enable )
*/
HB_FUNC_STATIC( QGLWIDGET_SETMOUSETRACKING )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setMouseTracking ( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void swapBuffers ()
*/
HB_FUNC_STATIC( QGLWIDGET_SWAPBUFFERS )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->swapBuffers ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void updateGL ()
*/
HB_FUNC_STATIC( QGLWIDGET_UPDATEGL )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->updateGL ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void updateOverlayGL ()
*/
HB_FUNC_STATIC( QGLWIDGET_UPDATEOVERLAYGL )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->updateOverlayGL ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QImage convertToGLFormat ( const QImage & img )
*/
HB_FUNC_STATIC( QGLWIDGET_CONVERTTOGLFORMAT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQIMAGE(1) )
  {
#endif
      QImage * ptr = new QImage( QGLWidget::convertToGLFormat ( *PQIMAGE(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

#pragma ENDDUMP
