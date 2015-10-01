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

#include "graphscene.h"

GraphScene::GraphScene()
{
    scene = new QGraphicsScene();
}

GraphScene::~GraphScene()
{
    for (int i = 0; i < this->scene->items().count(); i++)
        delete this->scene->items().at(i);
    delete scene;

    // This leaks memory
}

QGraphicsScene *GraphScene::DrawScene(Test *test, Algorithm algorithm)
{
    this->DrawNodes(test->GetNodes(),algorithm);
    this->DrawPath(test->GetPath(),algorithm);
    return this->scene;
}

void GraphScene::DrawNodes(QVector<Node *> nodes, Algorithm algorithm)
{
    for (int i = 0; i < nodes.count(); i++)
    {
        Node *node = nodes.at(i);
        // Draw connectors
        for (int j = 0; j < node->GetConnectors().count();j++)
        {
            Node *next = node->GetConnectors().at(j)->GetChild();
            this->scene->addLine(node->GetX()*wSize+(wSize/2), node->GetY()*hSize+(hSize/2),
                                 next->GetX()*wSize+(wSize/2),next->GetY()*hSize+(hSize/2), QPen(Qt::black));
        }
    }

    for (int i = 0; i < nodes.count(); i++)
    {
        Node *node = nodes.at(i);

        QGraphicsSimpleTextItem *nodeText = new QGraphicsSimpleTextItem();
        switch(algorithm)
        {
            case Algorithm::DIJKSTRA:
                nodeText->setText(QString::number(node->GetG()));
                break;
            case Algorithm::ASTAR:
                nodeText->setText(QString::number(node->GetF()));
                break;
            default:
                nodeText->setText("N/A");
                break;
        }
        nodeText->setPen(QPen(Qt::black));
        nodeText->setBrush(QBrush(Qt::black));
        nodeText->setPos(node->GetX()*wSize+5, node->GetY()*hSize);
        // Draw connectors
        this->scene->addEllipse(node->GetX()*wSize,node->GetY()*hSize,size,size, QPen(Qt::black),QBrush(Qt::green));
        this->scene->addItem(nodeText);
    }
}

void GraphScene::DrawPath(QVector<Node *> nodes, Algorithm algorithm)
{
    for (int i = 1; i < nodes.count(); i++)
    {
        Node *prev = nodes.at(i-1);
        Node *next = nodes.at(i);

        // Draw connectors
        for (int j = 0; j < nodes.count();j++)
        {
            this->scene->addLine(prev->GetX()*wSize+(wSize/2), prev->GetY()*hSize+(hSize/2),
                                 next->GetX()*wSize+(wSize/2),next->GetY()*hSize+(hSize/2), QPen(Qt::blue,3));
        }
    }
}
