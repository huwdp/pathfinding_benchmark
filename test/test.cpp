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

#include "test.h"

Test::Test()
{
    this->oEnd = 0;
    this->startNode = NULL;
    this->endNode = NULL;
    this->name = QString("");
    this->type = QString("");
    this->nodeCount = 0;
}

Test::~Test()
{
    for (int i = 0; i < this->nodes.count(); i++)
         this->nodes.removeAt(i);
}

void Test::AddNode(Node *node)
{
    this->nodes.append(node);
}

void Test::RemoveNode(Node *node)
{
    QVector<Node*> nodes = this->nodes;
    for (int i = 0; i < nodes.count(); i++)
    {
        if (nodes.at(i) == node)
            this->nodes.remove(i);
    }
}

Node *Test::GetStartNode()
{
    return this->startNode;
}

void Test::SetStartNode(Node *node)
{
    this->startNode = node;
}

Node *Test::GetEndNode()
{
    return this->endNode;
}

void Test::SetEndNode(Node *node)
{
    this->endNode = node;
}

QString Test::GetName()
{
    return this->name;
}

void Test::SetName(QString name)
{
    this->name = name;
}

QString Test::GetType()
{
    return this->type;
}

void Test::SetType(QString type)
{
    this->type = type;
}

Node *Test::GetNodeByName(QString name)
{
    // Loop around until node is found!
    for (int i = 0; i < this->nodes.count();i++)
    {
         Node *node = this->nodes.at(i);
         if (node->GetName().compare(name) == 0)
            return node;
    }
    return NULL;
}

QVector<Node*> Test::GetNodes()
{
    return this->nodes;
}

void Test::SetNodes(QVector<Node *> nodes)
{
    this->nodes = nodes;
}

void Test::Reset(){
    for (int i = 0; i < this->nodes.count(); i++)
    {
        Node *node = nodes.at(i);
        node->Reset();
    }
}

// For benchmark

QVector<Node *> Test::GetPath()
{
    return this->path;
}

void Test::SetPath(QVector<Node *> path)
{
    this->path = path;
}

int Test::GetNodeCount()
{
    return this->nodeCount;
}

void Test::SetNodeCount(int value)
{
    this->nodeCount = value;
}

void Test::StartTimer()
{
    this->qeTimer.start();
    this->clockTStart = clock();
    this->chronoStart = std::chrono::system_clock::now();
}

void Test::StopTimer()
{
    this->qeElapsed = qeTimer.nsecsElapsed();
    this->clockTElapsed = clock() - this->clockTStart;
    this->chronoEnd = std::chrono::system_clock::now();
    this->chronoElapsed = this->chronoEnd - this->chronoStart;
}

QString Test::ToString()
{
    QString output;
    output.append(this->GetName());
    output.append(",");
    output.append(this->GetType());
    output.append(",");

    for (int i = 0; i < this->path.count(); i++)
    {
        output.append(path.at(i)->GetName());
        output.append(" ");
    }

    output.append(",");
    output.append(QString::number(this->qeElapsed));
    output.append(",");
    output.append(QString::number(std::chrono::duration_cast<std::chrono::nanoseconds>(chronoElapsed).count()));
    // Node access count


    output.append(",");
    output.append(QString::number(this->nodeCount));

    return output;
}

