/********************************************************************************
** Form generated from reading UI file 'widget.ui'
**
** Created by: Qt User Interface Compiler version 4.8.7
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_WIDGET_H
#define UI_WIDGET_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QLineEdit>
#include <QtGui/QPushButton>
#include <QtGui/QWidget>

QT_BEGIN_NAMESPACE

class Ui_Widget
{
public:
    QLineEdit *procesoLineEdit;
    QPushButton *quitarPushButton;
    QPushButton *ecutarPushButton;
    QPushButton *CerrarBM;
    QLineEdit *CerrarLineEdit;
    QLabel *BmOn;
    QLabel *BmOff;

    void setupUi(QWidget *Widget)
    {
        if (Widget->objectName().isEmpty())
            Widget->setObjectName(QString::fromUtf8("Widget"));
        Widget->resize(432, 284);
        Widget->setMaximumSize(QSize(16777215, 16777215));
        Widget->setStyleSheet(QString::fromUtf8(""));
        procesoLineEdit = new QLineEdit(Widget);
        procesoLineEdit->setObjectName(QString::fromUtf8("procesoLineEdit"));
        procesoLineEdit->setEnabled(false);
        procesoLineEdit->setGeometry(QRect(9, 147, 94, 26));
        procesoLineEdit->setStyleSheet(QString::fromUtf8("display:block;"));
        quitarPushButton = new QPushButton(Widget);
        quitarPushButton->setObjectName(QString::fromUtf8("quitarPushButton"));
        quitarPushButton->setGeometry(QRect(9, 115, 80, 26));
        ecutarPushButton = new QPushButton(Widget);
        ecutarPushButton->setObjectName(QString::fromUtf8("ecutarPushButton"));
        ecutarPushButton->setGeometry(QRect(9, 83, 82, 26));
        CerrarBM = new QPushButton(Widget);
        CerrarBM->setObjectName(QString::fromUtf8("CerrarBM"));
        CerrarBM->setGeometry(QRect(9, 51, 94, 26));
        CerrarLineEdit = new QLineEdit(Widget);
        CerrarLineEdit->setObjectName(QString::fromUtf8("CerrarLineEdit"));
        CerrarLineEdit->setEnabled(false);
        CerrarLineEdit->setGeometry(QRect(9, 179, 94, 26));
        BmOn = new QLabel(Widget);
        BmOn->setObjectName(QString::fromUtf8("BmOn"));
        BmOn->setEnabled(true);
        BmOn->setGeometry(QRect(140, 90, 19, 16));
        BmOn->setStyleSheet(QString::fromUtf8("background:green;\n"
"border-radius:10px;"));
        BmOn->setInputMethodHints(Qt::ImhNone);
        BmOff = new QLabel(Widget);
        BmOff->setObjectName(QString::fromUtf8("BmOff"));
        BmOff->setEnabled(true);
        BmOff->setGeometry(QRect(130, 60, 22, 16));
        BmOff->setStyleSheet(QString::fromUtf8("background:red;\n"
"border-radius:10px;"));
        BmOff->setInputMethodHints(Qt::ImhNone);
        CerrarBM->raise();
        CerrarLineEdit->raise();
        procesoLineEdit->raise();
        quitarPushButton->raise();
        ecutarPushButton->raise();
        BmOn->raise();
        BmOff->raise();

        retranslateUi(Widget);
        QObject::connect(ecutarPushButton, SIGNAL(clicked()), Widget, SLOT(showFullScreen()));

        QMetaObject::connectSlotsByName(Widget);
    } // setupUi

    void retranslateUi(QWidget *Widget)
    {
        Widget->setWindowTitle(QApplication::translate("Widget", "Widget", 0, QApplication::UnicodeUTF8));
        procesoLineEdit->setText(QApplication::translate("Widget", "cd /home/pi/V105;lxterminal --geometry=75x15 -e sudo sh ejecutar_bm.sh", 0, QApplication::UnicodeUTF8));
        quitarPushButton->setText(QApplication::translate("Widget", "Cerrar", 0, QApplication::UnicodeUTF8));
        ecutarPushButton->setText(QApplication::translate("Widget", "Abrir BM", 0, QApplication::UnicodeUTF8));
        CerrarBM->setText(QApplication::translate("Widget", "Cerrar BM", 0, QApplication::UnicodeUTF8));
        CerrarLineEdit->setText(QApplication::translate("Widget", "cd /home/pi/V105;lxterminal --geometry=75x15 -e sudo sh cerrar_bm.sh", 0, QApplication::UnicodeUTF8));
        BmOn->setText(QApplication::translate("Widget", "<html><head/><body><p align=\"center\"><span style=\" font-size:9pt; color:#ffffff;\">On</span></p></body></html>", 0, QApplication::UnicodeUTF8));
        BmOff->setText(QApplication::translate("Widget", "<html><head/><body><p align=\"center\"><span style=\" font-size:9pt; color:#ffffff;\">Off</span></p></body></html>", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class Widget: public Ui_Widget {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_WIDGET_H
