#include "loginmanager.h"

LoginManager::LoginManager(QObject *parent)
    : QObject{parent}
{}

void LoginManager::managerFields(const QString &username, const QString &password)
{
    if(username == "ZZq" && password == "1234"){
        emit loginSignalChanged("Login :)");
    }else{
        emit loginSignalChanged("Sorry username or password invalid");
    }
}
