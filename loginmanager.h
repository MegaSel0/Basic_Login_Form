#ifndef LOGINMANAGER_H
#define LOGINMANAGER_H

#include <QObject>
#include <qqml.h>

class LoginManager : public QObject
{
    Q_OBJECT
public:
    explicit LoginManager(QObject *parent = nullptr);

public slots:
    void managerFields(const QString &username , const QString &password);

signals:
    void loginSignalChanged(const QString &result);
};

#endif // LOGINMANAGER_H
