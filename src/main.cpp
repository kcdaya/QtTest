#include<QApplication>
#include<QString>
#include<QLabel>

int main(int argc, char **argv)
{
    QApplication app(argc, argv);
    QLabel * label = new QLabel("Linux is awsome!");
    label->show();
    return app.exec();
}
