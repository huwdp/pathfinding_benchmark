#include "dijkstra.h"

Dijkstra::Dijkstra()
{
    this->nodeCount = 0;
}

Node *Dijkstra::PopNode()
{
    if (this->open.count() > 0)
    {
        Node *temp = this->open.at(0);
        int it = 0;
        for (int i = 1; i < this->open.count(); i++)
        {
            if (this->open.at(i)->GetG() <= temp->GetG())
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

void Dijkstra::PushNode(Node *node)
{
    this->open.push_back(node);
}

QVector<Node *> Dijkstra::GetPath()
{
    return this->path;
}

QVector<Node *> Dijkstra::ReconstructPath(Node *end)
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

double Dijkstra::GetCost(Node *node, Connector *connector)
{
    double dx, dy;
    Node *child = connector->GetChild();
    dx = fabs(node->GetX() - child->GetX());
    dy = fabs(node->GetY() - child->GetY());
    return sqrt(dx * dx + dy * dy) + connector->GetCost();
}

void Dijkstra::FindPath(Node *start, Node *end)
{
    start->SetG(0);
    this->PushNode(start);

    while (open.count() > 0)
    {
        // Find node by lowest G value
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

            double g = node->GetG() + GetCost(node,connector);

            if (!open.contains(neighbour) || g < neighbour->GetG())
            {
                neighbour->SetParent(node);
                neighbour->SetG(g);
                if (!this->open.contains(neighbour))
                    this->PushNode(neighbour);
            }
        }
    }
    this->ReconstructPath(end);
}

void Dijkstra::IncreaseNodeCount()
{
    this->nodeCount++;
}

void Dijkstra::DecreaseNodeCount()
{
    this->nodeCount--;
}

int Dijkstra::GetNodeCount()
{
    return this->nodeCount;
}

void Dijkstra::SetNodeCount(int value)
{
    this->nodeCount = value;
}
