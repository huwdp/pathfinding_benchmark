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

#include "results.h"

Results::Results()
{

}

Results::~Results()
{
    for (int i = 0; i < this->tests.count();i++)
    {
        delete this->tests.at(i);
        this->tests.removeAt(i);
    }
}

void Results::Add(Test *test)
{
    this->tests.append(test);
}

void Results::Remove(Test *test)
{
    for (int i = 0; i < this->tests.count(); i++)
    {
        if (this->tests.at(i) == test)
        {
            this->tests.removeAt(i);
        }
    }
}

QVector<Test *> Results::GetTests()
{
    return this->tests;
}

void Results::Clear()
{
    this->tests.clear();
}
