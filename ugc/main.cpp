#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <controller.h>

int main(int argc, char *argv[])
{
    DBHandler* dbHandler = new DBHandler();
    Controller* controller = new Controller();

    dbHandler->openConnection();
    controller->setDBReference(dbHandler);

    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
