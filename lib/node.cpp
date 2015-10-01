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

#include "includes.h"
#include "node.h"


Node::Node(int type)
{
    this->Reset();
    this->type = type;
}

Node::Node(QString name, int type)
{
    this->Reset();
    this->name = name;
    this->type = type;
}

Node::Node(int x, int y, int type)
{
    this->Reset();
    this->x = x;
    this->y = y;
    this->type = type;
}

Node::Node(int x, int y, QString name, int type)
{
    this->Reset();
    this->x = x;
    this->y = y;
    this->name = name;
    this->type = type;
}

Node::~Node()
{
    QVector<Connector*> connector = this->GetConnectors();
    for (int i = 0; i < connector.count(); i++)
        delete connector.at(i);

    // No need to delete previous nodes
    prev.clear();
}

void Node::Reset()
{
    this->accessCount = 0;
    this->x = x;
    this->y = y;
    this->g = std::numeric_limits<double>::infinity();
    this->f = std::numeric_limits<double>::infinity();
    this->h = std::numeric_limits<double>::infinity();
    this->name = name;
    this->type = type;
    this->visited = false;
    this->parent = NULL;
}

void Node::IncrementAccessCount()
{
    this->accessCount++;
}

void Node::DecreaseAccessCount()
{
    this->accessCount--;
}

int Node::GetAccessCount()
{
    return this->accessCount;
}

void Node::SetAccessCount(int value)
{
    this->accessCount = value;
}

void Node::SetType(int type)
{
    this->type = type;
}

int Node::GetType()
{
    return this->type;
}

void Node::SetVisited(bool value)
{
    this->visited = value;
}

bool Node::GetVisited()
{
    return this->visited;
}

QString Node::GetName()
{
    return this->name;
}

void Node::SetName(QString name)
{
    this->name = name;
}

int Node::GetX()
{
    return this->x;
}

int Node::GetY()
{
    return this->y;
}

void Node::SetX(int value)
{
    this->x = value;
}

void Node::SetY(int value)
{
    this->y = value;
}

double Node::GetG()
{
    return this->g;
}

void Node::SetG(double value)
{
    this->g = value;
}

double Node::GetF()
{
    return this->f;
}

void Node::SetF(double value)
{
    this->f = value;
}

double Node::GetH()
{
    return this->h;
}

void Node::SetH(double value)
{
    this->h = value;
}

Node* Node::GetParent()
{
    return this->parent;
}

void Node::SetParent(Node *node)
{
    this->parent = node;
}

QVector<Connector*> Node::GetConnectors()
{
    return this->connectors;
}

void Node::AddConnector(Connector *connector)
{
    this->connectors.append(connector);
    connector->GetChild()->prev.append(new Connector(connector->GetCost(), this));
}

