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
#include "includes.h"
#include "connector.h"
#include <limits>

class Connector;
class Hint;

class Node
{
private:
    QVector <Connector *> connectors;



    Node *parent;
    int type;
    QString name;
    bool visited;
    int x, y, accessCount;





public:
    Node(int);
    Node(QString, int);
    Node(int,int,int);
    Node(int, int, QString, int);
    ~Node();

    void Reset();
    void IncrementAccessCount();
    void DecreaseAccessCount();
    int GetAccessCount();
    void SetAccessCount(int);
    void SetType(int);
    int GetType();
    bool GetVisited();
    void SetVisited(bool);
    int GetX();
    void SetX(int);
    int GetY();
    void SetY(int);
    double GetG();
    void SetG(double);
    double GetF();
    void SetF(double);
    double GetH();
    void SetH(double);
    Node *GetParent();
    void SetParent(Node *);
    QVector<Connector*> GetConnectors();
    void AddConnector(Connector *connector);
    void AddConnectorToPrev(Connector *connector);
    Hint *GetOptimalHint();

    // Methods for testing, specifically for debugging
    QString GetName();
    void SetName(QString);
    double g, f, h;

    QVector<double> key;
    double rhs;
    QVector <Connector *> prev;

};
