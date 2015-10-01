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
#include <QGraphicsScene>
#include <QGraphicsSimpleTextItem>
#include <QGraphicsItem>
#include <lib/includes.h>
#include <test/test.h>

class GraphScene
{
private:
    QGraphicsScene *scene;
    const double size = 20.0;
    const double wSize = 20.0;
    const double hSize = 20.0;
    void DrawNodes(QVector<Node *>, Algorithm algorithm);
    void DrawPath(QVector<Node *>, Algorithm algorithm);
public:
    GraphScene();
    ~GraphScene();
    QGraphicsScene *DrawScene(Test *test, Algorithm algorithm);
};