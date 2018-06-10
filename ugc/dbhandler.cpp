#include "dbhandler.h"

DBHandler::DBHandler()
{
    //Check driver
    if(QSqlDatabase::isDriverAvailable(DRIVER)) {
        db = QSqlDatabase::addDatabase(DRIVER);
        db.setDatabaseName(":memory:");
    }
    else
        qWarning() << Q_FUNC_INFO << "SQL driver error!";
}

bool DBHandler::openConnection()
{
    if(!db.open()) {
        qWarning() << Q_FUNC_INFO << "ERROR: " << db.lastError();
        return false;
    }

    //Check if it's first time connection is made.
    if(db.tables().length() < 1)
        firstTimeSetup();

    return true;
}

void DBHandler::firstTimeSetup()
{
    //Setup needed tables etc.
}
