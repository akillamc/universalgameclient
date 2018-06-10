#include "controller.h"

Controller::Controller()
{

}

void Controller::setDBReference(DBHandler* db)
{
    this->db = db;
}
