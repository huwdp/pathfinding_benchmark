/*
Copyright (C) 2015 Huw David Pritchard

This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
*/

#pragma once

#include <QMainWindow>
#include <QFileDialog>
#include <QTimer>
#include <QElapsedTimer>
#include <QMessageBox>
#include <QGraphicsSimpleTextItem>
#include <QGraphicsItem>
#include "lib/config.h"
#include "lib/node.h"
#include "lib/dijkstra.h"
#include "lib/astar.h"
#include "lib/gbfs.h"
#include "lib/idastar.h"
#include "lib/rbfs.h"
#include "test/reader.h"
#include "test/test.h"
#include "test/results.h"
#include "lib/includes.h"
#include "gui/graphscene.h"

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

private:
    Ui::MainWindow *ui;
    QFileDialog fileDialog;
    Reader reader;
    Results results;

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

public slots:
    void OpenFile();
    void OpenFolder();
    void RunAStar();
    void RunDijsktra();
    void RunGreedyBestFirstSearch();
    void RunAll();
    void RunIDAStar();
    void RunRBFS();
    void PrintPath(QVector<Node *>);
    void DrawGraph(Test *, Algorithm);
    void AddMessage(QString);
    void About();
    void Clear();
    void Exit();

};
