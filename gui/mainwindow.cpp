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

#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    // Setup slots
    QObject::connect(ui->actionOpen, SIGNAL(triggered()), this, SLOT(OpenFile()));
    connect(ui->actionOpenFolder, SIGNAL(triggered()), this, SLOT(OpenFolder()));
    connect(ui->actionAStar, SIGNAL(triggered()), this, SLOT(RunAStar()));
    connect(ui->actionDijkstra, SIGNAL(triggered()), this, SLOT(RunDijsktra()));
    connect(ui->actionGreedy_Best_first_Search, SIGNAL(triggered()), this, SLOT(RunGreedyBestFirstSearch()));

    connect(ui->actionExit, SIGNAL(triggered()), this, SLOT(Exit()));
    connect(ui->actionAll, SIGNAL(triggered()), this, SLOT(RunAll()));
    connect(ui->actionAbout, SIGNAL(triggered()), this, SLOT(About()));
    connect(ui->actionClear, SIGNAL(triggered()), this, SLOT(Clear()));
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::AddMessage(QString text)
{
    //ui->listWidget->insertItem(0, text);
    ui->plainTextEdit->appendPlainText(text);
}

void MainWindow::OpenFile()
{
    reader.Reset();
    QFileDialog dialog(this);
    QString fileName = QFileDialog::getOpenFileName(this, tr("Open File"),NULL,tr("Text (*.txt)"));
    if (fileName == NULL)
        return;
    reader.SetFile(fileName);
    reader.ReadFile();
    //this->AddMessage(QString("File read"));
    this->DrawGraph(reader.GetTestAt(0),Algorithm::DIJKSTRA);
}

void MainWindow::OpenFolder()
{
    reader.Reset();
    QFileDialog dialog(this);
    dialog.setFileMode(QFileDialog::AnyFile);
    dialog.setNameFilter(tr("Text (*.txt)"));
    dialog.setFileMode(QFileDialog::ExistingFiles);
    QStringList files;
    if (dialog.exec())
        files = dialog.selectedFiles();

    for (int i = 0; i < files.count(); i++)
    {
        reader.SetFile(files.at(i));
        reader.ReadFile();
    }
}

void MainWindow::RunAStar()
{
    AStar aStar;
    QVector<Test*> tests = reader.GetTests();
    for (int i = 0; i < tests.count(); i++)
    {
        Test *test = tests.at(i);
        test->Reset();
        if (test->GetStartNode() != NULL && test->GetEndNode() != NULL)
        {
            test->SetType("AStar");
            test->StartTimer();
            aStar.FindPath(test->GetStartNode(), test->GetEndNode());
            test->StopTimer();
            test->SetPath(aStar.GetPath());
            test->SetNodeCount(aStar.GetNodeCount());
            results.Add(test);
            this->AddMessage(test->ToString());
        }
    }

    if (tests.count() == 1)
        this->DrawGraph(tests.at(0),Algorithm::ASTAR);
}

void MainWindow::RunDijsktra()
{
    QVector<Test*> tests = reader.GetTests();
    Dijkstra dijkstra;
    for (int i = 0; i < tests.count(); i++)
    {
        Test *test = tests.at(i);
        test->Reset();
        if (test->GetStartNode() != NULL && test->GetEndNode() != NULL)
        {
            test->SetType("Dijkstra");
            test->StartTimer();
            dijkstra.FindPath(test->GetStartNode(), test->GetEndNode());
            test->StopTimer();
            test->SetPath(dijkstra.GetPath());
            test->SetNodeCount(dijkstra.GetNodeCount());
            results.Add(test);
            this->AddMessage(test->ToString());
        }

    }

    if (tests.count() == 1)
        this->DrawGraph(tests.at(0),Algorithm::DIJKSTRA);
}

void MainWindow::RunGreedyBestFirstSearch()
{
    QVector<Test*> tests = reader.GetTests();
    GBFS gbfs;
    for (int i = 0; i < tests.count(); i++)
    {
        Test *test = tests.at(i);
        test->Reset();
        if (test->GetStartNode() != NULL && test->GetEndNode() != NULL)
        {
            test->SetType("Greedy best-first search");
            test->StartTimer();
            gbfs.FindPath(test->GetStartNode(), test->GetEndNode());
            test->StopTimer();
            test->SetPath(gbfs.GetPath());
            test->SetNodeCount(gbfs.GetNodeCount());
            results.Add(test);
            this->AddMessage(test->ToString());
        }

    }

    if (tests.count() == 1)
        this->DrawGraph(tests.at(0),Algorithm::ASTAR);
}

void MainWindow::RunIDAStar()
{
    QVector<Test*> tests = reader.GetTests();
    IDAStar idaStar;
    for (int i = 0; i < tests.count(); i++)
    {
        Test *test = tests.at(i);
        test->Reset();
        if (test->GetStartNode() != NULL && test->GetEndNode() != NULL)
        {
            test->SetType("");
            test->StartTimer();
            idaStar.FindPath(test->GetStartNode(), test->GetEndNode());
            test->StopTimer();
            test->SetPath(idaStar.GetPath());
            test->SetNodeCount(idaStar.GetNodeCount());
            results.Add(test);
            this->AddMessage(test->ToString());
        }
    }

    if (tests.count() == 1)
        this->DrawGraph(tests.at(0),Algorithm::ASTAR);
}

void MainWindow::RunRBFS()
{
    QVector<Test*> tests = reader.GetTests();
    RBFS rbfs;
    for (int i = 0; i < tests.count(); i++)
    {
        Test *test = tests.at(i);
        test->Reset();
        if (test->GetStartNode() != NULL && test->GetEndNode() != NULL)
        {
            test->SetType("");
            test->StartTimer();
            rbfs.FindPath(test->GetStartNode(), test->GetEndNode());
            test->StopTimer();
            test->SetPath(rbfs.GetPath());
            //test->SetNodeCount(idaStar.GetNodeCount());
            results.Add(test);
            this->AddMessage(test->ToString());
        }
    }

    if (tests.count() == 1)
        this->DrawGraph(tests.at(0),Algorithm::ASTAR);
}

void MainWindow::RunAll()
{
    this->RunAStar();
    this->RunDijsktra();
    this->RunGreedyBestFirstSearch();
}

void MainWindow::PrintPath(QVector<Node *> path)                // Convert into string
{
    QString output;
    if (path.count() > 0)
    {
        Node *node = path.at(0);
        output.append(node->GetName());
        for (int i = 1; i < path.count(); i++)
        {
            node = path.at(i);
            output.append(" >> ");
            output.append(node->GetName());
        }
    }
    else
        output = "No available path";
    this->AddMessage(output);
}

void MainWindow::DrawGraph(Test *test, Algorithm algorithm)
{
    GraphScene *scene = new GraphScene();
    this->ui->graphicsView->setScene(scene->DrawScene(test,algorithm));
}

void MainWindow::About()
{
    QMessageBox about;
    about.setWindowTitle("About - Pathfinding and visualisation tool - Huw Pritchard");
    about.setText("This is a benchmarking and visualisation tool by Huw Pritchard for School of Applied Computing at University of Wales Trinity Saint David.");
    about.setButtonText(1, "Close");
    about.exec();
}

void MainWindow::Clear()
{
    ui->plainTextEdit->clear();
}

void MainWindow::Exit()
{
    this->Exit();
}
