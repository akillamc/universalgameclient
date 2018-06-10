#ifndef GAMEENTRY_H
#define GAMEENTRY_H

#include <QStringList>
#include <utility.h>

class GameEntry
{

public:
    GameEntry(QString title);

    void addGenre(QString genre);
    void addArtwork(QString filepath);
    void addIcon(QString filepath);
    void setTitle(QString title);
    void setLauncher(Utility::GAME_LAUNCHER launcher);
    void setExecutable(QString filepath);

    void launch();

private:
    QString title;
    QStringList genre;

    QString artworkPath;
    QString iconPath;

    QString executablePath;

    Utility::GAME_LAUNCHER launcher;

};

#endif // GAMEENTRY_H
