/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 4.8.7
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QLineEdit>
#include <QtGui/QMainWindow>
#include <QtGui/QMenuBar>
#include <QtGui/QPushButton>
#include <QtGui/QStatusBar>
#include <QtGui/QToolBar>
#include <QtGui/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralWidget;
    QPushButton *ejecutarBmPushButton;
    QPushButton *CerrarBmPushButton;
    QPushButton *pushButton_3;
    QLabel *label;
    QLineEdit *EjecutarBmLineEdit;
    QLineEdit *CerrarBmLineEdit;
    QMenuBar *menuBar;
    QToolBar *mainToolBar;
    QStatusBar *statusBar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QString::fromUtf8("MainWindow"));
        MainWindow->resize(559, 300);
        centralWidget = new QWidget(MainWindow);
        centralWidget->setObjectName(QString::fromUtf8("centralWidget"));
        ejecutarBmPushButton = new QPushButton(centralWidget);
        ejecutarBmPushButton->setObjectName(QString::fromUtf8("ejecutarBmPushButton"));
        ejecutarBmPushButton->setGeometry(QRect(90, 90, 107, 26));
        CerrarBmPushButton = new QPushButton(centralWidget);
        CerrarBmPushButton->setObjectName(QString::fromUtf8("CerrarBmPushButton"));
        CerrarBmPushButton->setGeometry(QRect(90, 120, 171, 26));
        pushButton_3 = new QPushButton(centralWidget);
        pushButton_3->setObjectName(QString::fromUtf8("pushButton_3"));
        pushButton_3->setGeometry(QRect(30, 190, 141, 26));
        label = new QLabel(centralWidget);
        label->setObjectName(QString::fromUtf8("label"));
        label->setGeometry(QRect(10, 80, 61, 61));
        label->setPixmap(QPixmap(QString::fromUtf8("../../V105/C4FM.png")));
        label->setScaledContents(true);
        EjecutarBmLineEdit = new QLineEdit(centralWidget);
        EjecutarBmLineEdit->setObjectName(QString::fromUtf8("EjecutarBmLineEdit"));
        EjecutarBmLineEdit->setGeometry(QRect(20, 10, 521, 26));
        CerrarBmLineEdit = new QLineEdit(centralWidget);
        CerrarBmLineEdit->setObjectName(QString::fromUtf8("CerrarBmLineEdit"));
        CerrarBmLineEdit->setGeometry(QRect(22, 50, 521, 26));
        MainWindow->setCentralWidget(centralWidget);
        menuBar = new QMenuBar(MainWindow);
        menuBar->setObjectName(QString::fromUtf8("menuBar"));
        menuBar->setGeometry(QRect(0, 0, 559, 23));
        MainWindow->setMenuBar(menuBar);
        mainToolBar = new QToolBar(MainWindow);
        mainToolBar->setObjectName(QString::fromUtf8("mainToolBar"));
        MainWindow->addToolBar(Qt::TopToolBarArea, mainToolBar);
        statusBar = new QStatusBar(MainWindow);
        statusBar->setObjectName(QString::fromUtf8("statusBar"));
        MainWindow->setStatusBar(statusBar);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "MainWindow", 0, QApplication::UnicodeUTF8));
        ejecutarBmPushButton->setText(QApplication::translate("MainWindow", "Abrir BM", 0, QApplication::UnicodeUTF8));
        CerrarBmPushButton->setText(QApplication::translate("MainWindow", "Cerrar BM", 0, QApplication::UnicodeUTF8));
        pushButton_3->setText(QApplication::translate("MainWindow", "Cerrar ventana", 0, QApplication::UnicodeUTF8));
        label->setText(QString());
        EjecutarBmLineEdit->setText(QApplication::translate("MainWindow", "cd /home/pi/V105;lxterminal --geometry=80x15 -e sudo sh ejecutar_bm.sh", 0, QApplication::UnicodeUTF8));
        CerrarBmLineEdit->setText(QApplication::translate("MainWindow", "cd /home/pi/V105;lxterminal --geometry=80x15 -e sudo sh cerrar_bm.sh", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
