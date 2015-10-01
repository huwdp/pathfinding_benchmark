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

#include "reader.h"

Reader::Reader()
{

}

Reader::Reader(QString file)
{
    this->file = file;
}

Reader::~Reader()
{
    this->Reset();
}

void Reader::Reset()
{
    for (int i = 0; i < tests.count(); i++)
        tests.removeAt(i);
    file.clear();
}

QString Reader::GetFile()
{
    return this->file;
}

Test *Reader::GetTestAt(int id)
{
    return tests.at(id);
}

QVector<Test*> Reader::GetTests()
{
    return tests;
}

void Reader::SetFile(QString file)
{
    this->file = file;
}

void Reader::ProcessLine(Test *test, QString string)
{
    // Get test

    QStringList list = string.split(' ',QString::SkipEmptyParts);

    if (list.count() < 1)
        return;

    QString intruction = list.at(0);

    if (intruction.compare(QString("name"),Qt::CaseInsensitive) == 0)
    {
        if (list.count() < 2)
        {
            //qDebug("Not enough arguments for node.");
            return;
        }

        QString name = list.at(1);
        test->SetName(name);

        //qDebug("Name detected.");
        return;
    }

    if (intruction.compare(QString("node"),Qt::CaseInsensitive) == 0)
    {
        if (list.count() < 4)
        {
            //qDebug("Not enough arguments for node.");
            return;
        }

        QString name = list.at(1);
        int x = list.at(2).toInt();
        int y = list.at(3).toInt();
        int type = 1; // NO idea :/

        test->AddNode(new Node(x,y,name,1));

        //qDebug("Node detected.");
        return;
    }

    if (intruction.compare(QString("strt"),Qt::CaseInsensitive) == 0)
    {
        if (list.count() < 2)
        {
            //qDebug("Not enough arguments for start node.");
            return;
        }

        QString name = list.at(1);
        Node *node = test->GetNodeByName(name);
        test->SetStartNode(node);

        //qDebug("Start node detected.");
        return;
    }

    if (intruction.compare(QString("cntr"),Qt::CaseInsensitive) == 0)
    {
            if (list.count() < 4)
            {
                //qDebug("Not enough arguments for controller.");
                return;
            }
            QString name1 = list.at(1);
            QString name2 = list.at(2);
            int distance = list.at(3).toInt();
            Node *node1 = test->GetNodeByName(name1);
            Node *node2 = test->GetNodeByName(name2);

            if (node1 == NULL || node2 == NULL)
                return;

            Connector *connector = new Connector(distance, node2);
            node1->AddConnector(connector);

            //qDebug("Connector detected.");
            return;
    }

    if (intruction.compare(QString("end"),Qt::CaseInsensitive) == 0)
    {
        if (list.count() < 2)
        {
            //qDebug("Not enough arguments for end node");
            return;
        }

        QString name = list.at(1);
        Node *node = test->GetNodeByName(name);
        test->SetEndNode(node);

        //qDebug("End node detected.");
        return;
    }

    //qDebug("Line error.");
}

void Reader::ReadFile()
{
    Test *test = new Test();
    test->SetName(this->file);
    string line;
    ifstream fileReader(this->file.toLatin1());
    if (!fileReader.is_open())
    {
        return;
    }

    while ( getline(fileReader,line) )
    {
        QString qline = QString::fromStdString(line);
        qline = qline.trimmed();                        // Remove nasty characters such as \r
        this->ProcessLine(test,qline);
    }
    fileReader.close();

    this->tests.append(test);
}
