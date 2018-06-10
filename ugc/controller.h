#ifndef CONTROLLER_H
#define CONTROLLER_H

#include <dbhandler.h>

class Controller
{
public:
    Controller();
    void setDBReference(DBHandler* db);

private:
    DBHandler* db;
};

#endif // CONTROLLER_H
