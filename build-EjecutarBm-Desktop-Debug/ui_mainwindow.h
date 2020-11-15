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
#include <QtGui/QPushButton>
#include <QtGui/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralWidget;
    QPushButton *ejecutarBmPushButton;
    QPushButton *CerrarBmPushButton;
    QPushButton *pushButton_3;
    QLineEdit *EjecutarBmLineEdit;
    QLineEdit *CerrarBmLineEdit;
    QLabel *IconoBmOff;
    QLabel *IconoBmOn;
    QLabel *label;
    QLineEdit *EditarBmLineEdit;
    QPushButton *EditarBmPushButton;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QString::fromUtf8("MainWindow"));
        MainWindow->resize(249, 155);
        MainWindow->setStyleSheet(QString::fromUtf8(""));
        centralWidget = new QWidget(MainWindow);
        centralWidget->setObjectName(QString::fromUtf8("centralWidget"));
        ejecutarBmPushButton = new QPushButton(centralWidget);
        ejecutarBmPushButton->setObjectName(QString::fromUtf8("ejecutarBmPushButton"));
        ejecutarBmPushButton->setGeometry(QRect(70, 10, 171, 26));
        ejecutarBmPushButton->setCursor(QCursor(Qt::PointingHandCursor));
        ejecutarBmPushButton->setStyleSheet(QString::fromUtf8("border-radius:5px;\n"
"background:#00CC33;\n"
"border:2px solid #fff;"));
        CerrarBmPushButton = new QPushButton(centralWidget);
        CerrarBmPushButton->setObjectName(QString::fromUtf8("CerrarBmPushButton"));
        CerrarBmPushButton->setGeometry(QRect(70, 40, 171, 26));
        CerrarBmPushButton->setCursor(QCursor(Qt::PointingHandCursor));
        CerrarBmPushButton->setStyleSheet(QString::fromUtf8("border-radius:5px;\n"
"background:#f00;\n"
"border:2px solid #fff;\n"
"color:#fff;"));
        pushButton_3 = new QPushButton(centralWidget);
        pushButton_3->setObjectName(QString::fromUtf8("pushButton_3"));
        pushButton_3->setGeometry(QRect(150, 120, 91, 26));
        pushButton_3->setCursor(QCursor(Qt::PointingHandCursor));
        pushButton_3->setStyleSheet(QString::fromUtf8("border-radius:5px;\n"
"background:#ffb6c1;\n"
"border:2px solid #fff;\n"
"color:#000;"));
        EjecutarBmLineEdit = new QLineEdit(centralWidget);
        EjecutarBmLineEdit->setObjectName(QString::fromUtf8("EjecutarBmLineEdit"));
        EjecutarBmLineEdit->setGeometry(QRect(10, 240, 521, 26));
        CerrarBmLineEdit = new QLineEdit(centralWidget);
        CerrarBmLineEdit->setObjectName(QString::fromUtf8("CerrarBmLineEdit"));
        CerrarBmLineEdit->setGeometry(QRect(10, 270, 521, 26));
        IconoBmOff = new QLabel(centralWidget);
        IconoBmOff->setObjectName(QString::fromUtf8("IconoBmOff"));
        IconoBmOff->setGeometry(QRect(10, 10, 51, 51));
        IconoBmOff->setPixmap(QPixmap(QString::fromUtf8("../../V105/ICONO_BM.png")));
        IconoBmOff->setScaledContents(true);
        IconoBmOff->setWordWrap(false);
        IconoBmOn = new QLabel(centralWidget);
        IconoBmOn->setObjectName(QString::fromUtf8("IconoBmOn"));
        IconoBmOn->setGeometry(QRect(10, 10, 51, 51));
        IconoBmOn->setPixmap(QPixmap(QString::fromUtf8("../../V105/ICONO_BM_ON.png")));
        IconoBmOn->setScaledContents(true);
        label = new QLabel(centralWidget);
        label->setObjectName(QString::fromUtf8("label"));
        label->setGeometry(QRect(10, 70, 51, 51));
        label->setPixmap(QPixmap(QString::fromUtf8("../../V105/Editar_repeater.png")));
        label->setScaledContents(true);
        EditarBmLineEdit = new QLineEdit(centralWidget);
        EditarBmLineEdit->setObjectName(QString::fromUtf8("EditarBmLineEdit"));
        EditarBmLineEdit->setGeometry(QRect(10, 300, 551, 26));
        EditarBmPushButton = new QPushButton(centralWidget);
        EditarBmPushButton->setObjectName(QString::fromUtf8("EditarBmPushButton"));
        EditarBmPushButton->setGeometry(QRect(70, 82, 171, 26));
        EditarBmPushButton->setCursor(QCursor(Qt::PointingHandCursor));
        EditarBmPushButton->setStyleSheet(QString::fromUtf8("border-radius:5px;\n"
"background:#a9a9a9;\n"
"border:2px solid #fff;\n"
"color:#fff;"));
        MainWindow->setCentralWidget(centralWidget);
        QWidget::setTabOrder(CerrarBmPushButton, EjecutarBmLineEdit);
        QWidget::setTabOrder(EjecutarBmLineEdit, EditarBmPushButton);
        QWidget::setTabOrder(EditarBmPushButton, pushButton_3);
        QWidget::setTabOrder(pushButton_3, CerrarBmLineEdit);
        QWidget::setTabOrder(CerrarBmLineEdit, EditarBmLineEdit);
        QWidget::setTabOrder(EditarBmLineEdit, ejecutarBmPushButton);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "MainWindow", 0, QApplication::UnicodeUTF8));
        ejecutarBmPushButton->setText(QApplication::translate("MainWindow", "Abrir BM", 0, QApplication::UnicodeUTF8));
        CerrarBmPushButton->setText(QApplication::translate("MainWindow", "Cerrar BM", 0, QApplication::UnicodeUTF8));
        pushButton_3->setText(QApplication::translate("MainWindow", "Cerrar", 0, QApplication::UnicodeUTF8));
        EjecutarBmLineEdit->setText(QApplication::translate("MainWindow", "cd /home/pi/V105;lxterminal --geometry=80x15 -e sudo sh ejecutar_bm.sh", 0, QApplication::UnicodeUTF8));
        CerrarBmLineEdit->setText(QApplication::translate("MainWindow", "cd /home/pi/V105;lxterminal --geometry=80x15 -e sudo sh cerrar_bm.sh", 0, QApplication::UnicodeUTF8));
        IconoBmOff->setText(QString());
        IconoBmOn->setText(QString());
        label->setText(QString());
        EditarBmLineEdit->setText(QApplication::translate("MainWindow", "cd /home/pi/V105;lxterminal --geometry=93x52 -e sudo sh editar_MMDVMBM.sh", 0, QApplication::UnicodeUTF8));
        EditarBmPushButton->setText(QApplication::translate("MainWindow", "Editar BM", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
