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

#include "gbfs.h"

GBFS::GBFS()
{
    this->nodeCount = 0;
}

Node *GBFS::PopNode()
{
    if (this->open.count() > 0)
    {
        Node *temp = this->open.at(0);
        int it = 0;
        for (int i = 1; i < this->open.count(); i++)
        {
            if (this->open.at(i)->GetF() <= temp->GetF())
            {
                it = i;
                temp = this->open.at(i);
            }
        }

        this->open.removeAt(it);
        return temp;
    }
    else
        return NULL;
}

void GBFS::PushNode(Node *node)
{
    this->open.push_back(node);
}

QVector<Node *> GBFS::GetPath()
{
    return this->path;
}

QVector<Node *> GBFS::ReconstructPath(Node *end)
{
    path.clear();
    Node *node = end;
    while (node->GetParent() != NULL)
    {
        path.push_front(node);
        node = node->GetParent();
    }
    path.push_front(node);
    return path;
}

double GBFS::GetHeuristic(Node *node, Node *end)
{
    double dx, dy, d;
    d = 2;
    dx = fabs(node->GetX() - end->GetX());
    dy = fabs(node->GetY() - end->GetY());
    return sqrt(dx * dx + dy * dy);
}

double GBFS::GetCost(Node *node, Connector *connector)
{
    double dx, dy;
    Node *child = connector->GetChild();
    dx = fabs(node->GetX() - child->GetX());
    dy = fabs(node->GetY() - child->GetY());
    return sqrt(dx * dx + dy * dy) + connector->GetCost();
}

// Reference code (it's in document)
void GBFS::FindPath(Node *start, Node *end)
{
    start->SetF(0);
    start->SetH(0);
    this->PushNode(start);

    while (open.count() > 0)
    {
        // Find node by lowest F value
        Node *node = this->PopNode();
        this->IncreaseNodeCount();

        if (node == end)
        {
            this->ReconstructPath(end);
            return;
        }

        closed.append(node);

        for (int i = 0; i < node->GetConnectors().count(); i++)
        {
            Connector *connector = node->GetConnectors().at(i);
            Node *neighbour = connector->GetChild();

            if (this->closed.contains(neighbour))
                continue;

            double f = node->GetF() + GetCost(node,connector);

            if (!open.contains(neighbour) || f < neighbour->GetF())
            {
                neighbour->SetParent(node);
                //neighbour->SetG(g);
                neighbour->SetH(GetHeuristic(neighbour,end));
                neighbour->SetF(neighbour->GetH());
                //this->IncreaseNodeCount();

                if (!this->open.contains(neighbour))
                    this->PushNode(neighbour);
            }
        }
    }

    this->ReconstructPath(end);
}

void GBFS::IncreaseNodeCount()
{
    this->nodeCount++;
}

void GBFS::DecreaseNodeCount()
{
    this->nodeCount--;
}

int GBFS::GetNodeCount()
{
    return this->nodeCount;
}

void GBFS::SetNodeCount(int value)
{
    this->nodeCount = value;
}
