#include "loginmanager.h"

LoginManager::LoginManager(QObject *parent)
    : QObject{parent}
{}

void LoginManager::managerFields(const QString &username, const QString &password)
{
    if(username == "Afshin" && password == "12345"){
        emit loginSignalChanged("Login :)");
    }else{
        emit loginSignalChanged("Sorry username or password invalid");
    }
}
