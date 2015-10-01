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

#include "../lib/node.h"
#include <QElapsedTimer>
//#include <omp.h>
#include <time.h>

#include <ctime>
#include <ratio>
#include <chrono>

class Test
{
private:
    Node *startNode;
    Node *endNode;
    QVector<Node*> nodes;
    QVector<Node*> path;
    QString name;
    QString type;
    int nodeCount;


    QElapsedTimer qeTimer;      // QTimer
    qint64 qeElapsed;

    double oStart, oEnd;        // OMP
    clock_t clockTStart, clockTElapsed;       // clock_t

    // http://en.cppreference.com/w/cpp/chrono
    std::chrono::time_point<std::chrono::system_clock> chronoStart, chronoEnd;
    std::chrono::duration<double> chronoElapsed;

public:
    Test();
    ~Test();
    void AddNode(Node *);
    void RemoveNode(Node *);
    Node *GetNodeByName(QString);
    Node *GetStartNode();
    void SetStartNode(Node *);
    Node *GetEndNode();
    void SetEndNode(Node *);
    QString GetName();
    void SetName(QString);
    QString GetType();
    void SetType(QString);
    QVector<Node*> GetNodes();
    void SetNodes(QVector<Node *>);
    void Reset();
    void SetNodeCount(int value);
    int GetNodeCount();

    // For benchmark
    void StartTimer();
    void StopTimer();
    QVector<Node *> GetPath();
    void SetPath(QVector<Node *>);
    bool CompareTo(Node *);
    QString ToString();

};

#endif // TEST_H
