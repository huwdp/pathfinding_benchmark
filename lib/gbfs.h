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
#include "config.h"
#include "node.h"
#include "pathfinder.h"

class GBFS : Pathfinder
{
private:
    int nodeCount;
    QVector<Node *> path;
    QVector<Node *> open;
    QVector<Node *> closed;
public:
    GBFS();
    Node *PopNode();
    void PushNode(Node *);
    QVector<Node *> GetPath();
    QVector<Node *> ReconstructPath(Node *);
    double GetCost(Node *,Connector *);
    double GetHeuristic(Node *, Node *);
    void FindPath(Node *, Node *);
    void IncreaseNodeCount();
    void DecreaseNodeCount();
    int GetNodeCount();
    void SetNodeCount(int);
};
