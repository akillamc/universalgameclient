#ifndef DBHANDLER_H
#define DBHANDLER_H

#include <QSqlDatabase>
#include <QSqlDriver>
#include <QSqlError>
#include <QSqlQuery>
#include <QDebug>
#include <gameentry.h>

class DBHandler
{
public:
    DBHandler();
    bool openConnection();
    bool addGame(GameEntry game);

private:
    const QString DRIVER = "QSQLITE";
    QSqlDatabase db;

    void firstTimeSetup();
};



#endif // DBHANDLER_H
