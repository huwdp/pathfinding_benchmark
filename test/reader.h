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
#include "../lib/node.h"
#include "test.h"
#include <QFile>
#include <iostream>
#include <fstream>

class Reader
{
private:
    QString file;
    QVector<Test*> tests;
    void ProcessLine(Test *, QString);
public:
    Reader();
    Reader(QString);

    ~Reader();
    void Reset();
    Test *GetTestAt(int);
    QVector<Test*> GetTests();
    QString GetFile();
    void SetFile(QString);
    void ReadFile();
};
