%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

%% #ifndef QT_NO_SSL
%% #endif // QT_NO_SSL

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods
%% #if QT_DEPRECATED_SINCE(5,0)
%%   METHOD isValid
%% #endif
%% #if QT_DEPRECATED_SINCE(5,0)
%%   METHOD alternateSubjectNames
%% #endif

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QDateTime>
#include <QtCore/QStringList>
#include <QtNetwork/QSslCertificateExtension>
#include <QtNetwork/QSslError>
#include <QtNetwork/QSslKey>

$prototype=explicit QSslCertificate ( QIODevice * device, QSsl::EncodingFormat format = QSsl::Pem )
$internalConstructor=|new1|QIODevice *,QSsl::EncodingFormat=QSsl::Pem

$prototype=explicit QSslCertificate ( const QByteArray & data = QByteArray(), QSsl::EncodingFormat format = QSsl::Pem )
$internalConstructor=|new2|const QByteArray &=QByteArray(),QSsl::EncodingFormat=QSsl::Pem

$prototype=QSslCertificate ( const QSslCertificate & other )
$internalConstructor=|new3|const QSslCertificate &

/*
[1]explicit QSslCertificate ( QIODevice * device, QSsl::EncodingFormat format = QSsl::Pem )
[2]explicit QSslCertificate ( const QByteArray & data = QByteArray(), QSsl::EncodingFormat format = QSsl::Pem )
[3]QSslCertificate ( const QSslCertificate & other )
*/

HB_FUNC_STATIC( QSSLCERTIFICATE_NEW )
{
  if( ISBETWEEN(1,2) && ISQIODEVICE(1) && ISOPTNUM(2) )
  {
    QSslCertificate_new1();
  }
  else if( ISBETWEEN(0,2) && ISOPTQBYTEARRAY(1) && ISOPTNUM(2) )
  {
    QSslCertificate_new2();
  }
  else if( ISNUMPAR(1) && ISQSSLCERTIFICATE(1) )
  {
    QSslCertificate_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QSslCertificate()
$deleteMethod

$prototype=void swap(QSslCertificate &other) Q_DECL_NOTHROW
$method=|void|swap|QSslCertificate &

$prototypeV2=bool isNull() const

%% #if QT_DEPRECATED_SINCE(5,0)
$prototype=bool isValid() const
$method=|bool|isValid||#if QT_DEPRECATED_SINCE(5,0)
%% #endif

$prototypeV2=bool isBlacklisted() const

$prototype=bool isSelfSigned() const
$method=5,4,0|bool|isSelfSigned|

$prototypeV2=void clear()

$prototypeV2=QByteArray version() const

$prototypeV2=QByteArray serialNumber() const

$prototype=QByteArray digest(QCryptographicHash::Algorithm algorithm = QCryptographicHash::Md5) const
$method=|QByteArray|digest|QCryptographicHash::Algorithm=QCryptographicHash::Md5

$prototype=QStringList issuerInfo ( SubjectInfo subject ) const
$internalMethod=|QStringList|issuerInfo,issuerInfo1|QSslCertificate::SubjectInfo

$prototype=QStringList issuerInfo ( const QByteArray & attribute ) const
$internalMethod=|QStringList|issuerInfo,issuerInfo2|const QByteArray &

/*
[1]QStringList issuerInfo ( SubjectInfo subject ) const
[2]QStringList issuerInfo ( const QByteArray & tag ) const
*/

HB_FUNC_STATIC( QSSLCERTIFICATE_ISSUERINFO )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSslCertificate_issuerInfo1();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QSslCertificate_issuerInfo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=issuerInfo

$prototype=QStringList subjectInfo ( SubjectInfo subject ) const
$internalMethod=|QStringList|subjectInfo,subjectInfo1|QSslCertificate::SubjectInfo

$prototype=QStringList subjectInfo ( const QByteArray & attribute ) const
$internalMethod=|QStringList|subjectInfo,subjectInfo2|const QByteArray &

/*
[1]QStringList subjectInfo(SubjectInfo subject) const
[2]QStringList subjectInfo(const QByteArray & attribute) const
*/

HB_FUNC_STATIC( QSSLCERTIFICATE_SUBJECTINFO )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSslCertificate_subjectInfo1();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QSslCertificate_subjectInfo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=subjectInfo

$prototype=QList<QByteArray> subjectInfoAttributes() const
$method=|QList<QByteArray>|subjectInfoAttributes|

$prototype=QList<QByteArray> issuerInfoAttributes() const
$method=|QList<QByteArray>|issuerInfoAttributes|

%% #if QT_DEPRECATED_SINCE(5,0)
$prototype=QMultiMap<QSsl::AlternateNameEntryType, QString> alternateSubjectNames() const
%% TODO: implementar QMultiMap
%% #endif

$prototype=QMultiMap<QSsl::AlternativeNameEntryType, QString> subjectAlternativeNames() const
%% TODO: implementar QMultiMap

$prototypeV2=QDateTime effectiveDate() const

$prototypeV2=QDateTime expiryDate() const

$prototypeV2=QSslKey publicKey() const

$prototype=QList<QSslCertificateExtension> extensions() const
$method=|QList<QSslCertificateExtension>|extensions|

$prototypeV2=QByteArray toPem() const

$prototypeV2=QByteArray toDer() const

$prototypeV2=QString toText() const

$prototype=static QList<QSslCertificate> fromPath(const QString &path, QSsl::EncodingFormat format = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString)
$staticMethod=|QList<QSslCertificate>|fromPath|const QString &,QSsl::EncodingFormat=QSsl::Pem,QRegExp::PatternSyntax=QRegExp::FixedString

$prototype=static QList<QSslCertificate> fromDevice(QIODevice * device, QSsl::EncodingFormat format = QSsl::Pem)
$staticMethod=|QList<QSslCertificate>|fromDevice|QIODevice *,QSsl::EncodingFormat=QSsl::Pem

$prototype=static QList<QSslCertificate> fromData(const QByteArray &data, QSsl::EncodingFormat format = QSsl::Pem)
$staticMethod=|QList<QSslCertificate>|fromData|const QByteArray &,QSsl::EncodingFormat=QSsl::Pem

$prototype=static QList<QSslError> verify(QList<QSslCertificate> certificateChain, const QString &hostName = QString())
$staticMethod=|QList<QSslError>|verify|QList<QSslCertificate>,const QString &=QString()

$prototype=static bool importPkcs12(QIODevice *device, QSslKey *key, QSslCertificate *cert, QList<QSslCertificate> *caCertificates = nullptr, const QByteArray &passPhrase=QByteArray())
%% TODO: implementar
%% $staticMethod=5,4,0|bool|importPkcs12|QIODevice *,QSslKey *,QSslCertificate *,QList<QSslCertificate> *=nullptr,const QByteArray &=QByteArray()

$prototypeV2=Qt::HANDLE handle() const

$extraMethods

#pragma ENDDUMP
