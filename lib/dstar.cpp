#include "dstar.h"

DStar::DStar()
{
}

void DStar::Initialise()
{
    // Change all nodes to infinity
    //this->U = new list
    this->k_m = 0;
    this->sGoal->rhs = 0;



    //U.insert(sgoal,CalculateKey(sgoal));
    //U.append(sGoal, );
}

Node *DStar::UTopKey()
{
    if (this->U.count() == 0)
        return NULL;

    Node *node = this->U.at(0);
    for (int i = 0; i < this->U.count(); i++)
    {
        if (this->U.at(i)->rhs < node->rhs)
            node = this->U.at(i);
    }
    return node;
}

void DStar::PrintPath()
{
    for (int i = 0; i < path.count(); i++)
        qDebug() << path.at(i)->GetName();
}

QVector<Node *> DStar::GetPath()
{
    return this->path;
}

QVector<Node *> DStar::ReconstructPath(Node *end)
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

void UpdateNode(Node *u)
{
    //if (u != sgoal)
    //    u.rhs = min...rdgdfhgftgftg

    //if (this->U.Contains(u))


    // if (u.g == u.rhs))
    //    U.Insert(u,GetCost(u))


}

double DStar::GetCost(Node *u, Node *p)
{
    // return [min(node1.g,node.rhs)) + node1.h
    // Get distance from node/u to start

    return 0.0;
}

double DStar::CalculateKey(Node *node)
{
    //return [min(s->g,s->rhs) + h(sstart, s) + km; min(s->g,s->rhs)];
    return 0.0;
}


void DStar::ComputeShortestPath()
{

    while (this->UTopKey() < this->CalculateKey(sstart) && this->sstart->rhs != this->sstart->g)
    {
        Node *kold = this->UTopKey();
        Node *u = U.Pop();

        if (kold < CalculateKey(u))
            U.insert(u,CalculateKey(u));
        else if (u.g > u.rhs)
        {
            u.g = u.rhs;
            for (int i = 0; i < Pred(u);i++)
            {
                if (s == this->Pred(u))
                    UpdateNode(s);
            }
        }
        else
        {
            u.g = std::numeric_limits<double>::infinity();
            for (int i = 0; i < this->Pred.count();i++)
            {
                Node *s = this->U.at(i);
                UpdateNode(s);
            }
        }
    }

}

void DStar::FindPath(Node *start, Node *end)
{
    Initialise();
    this->sStart = start;
    this->sGoal = end;
    Node *slast = start;

    ComputeShortestPath();
    while (start != sGoal)
    {
        if (start->g == INFINITY)
        {
            // end algorithm
        }
        // sstart = arg min dkgnnjgn
        // Move to start
        //Scan graph for change edge costs
        //if any changed
        {
            this->k_m = this->k_m + GetCost(slast,sstart);
            slast = sstart;
            //for all directed edeges (u,v) with changed edge costs
            //{
            //    Update the edge cost c(u,v)
            //    this->UpdateNode(u);
            //}
            this->ComputeShortestPath();
        }

    }

}
