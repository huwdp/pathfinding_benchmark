#pragma once
#include "includes.h"
#include "config.h"
#include "node.h"
#include <limits>

class DStar
{
private:
    QVector<Node *> path;
    int k_m;
    Node *sstart;
    Node *sGoal;
public:
    DStar();
    void Initialise();
    void PrintPath();
    QVector<Node *> GetPath();
    QVector<Node *> ReconstructPath(Node *);
    void UpdateNode(Node *);
    void ComputeShortestPath();
    double CalculateKey(Node *node);
    double GetCost(Node *, Node *);
    void FindPath(Node *, Node *);
    QVector<Node *> U;
    QVector<Node *> Pred;
    Node *UTopKey();
};
