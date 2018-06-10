#ifndef DBHANDLER_H
#define DBHANDLER_H

#include <QSqlDatabase>
#include <QSqlDriver>
#include <QSqlError>
#include <QSqlQuery>
#include <QDebug>
#include <gameentry.h>
#include <QList>

class DBHandler
{
public:
    DBHandler();
    bool openConnection();
    bool addGame(GameEntry game);
    bool removeGame(GameEntry game);

    QList<GameEntry> findGame(QString query);

private:
    const QString DRIVER = "QSQLITE";
    QSqlDatabase db;

    void firstTimeSetup();
};



#endif // DBHANDLER_H
