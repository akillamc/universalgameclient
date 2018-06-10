#ifndef GAMEENTRY_H
#define GAMEENTRY_H

#include <QStringList>

class GameEntry
{

public:
    GameEntry();

private:
    QString title;
    QStringList genre;

    QString artworkPath;
    QString iconPath;
};

#endif // GAMEENTRY_H
