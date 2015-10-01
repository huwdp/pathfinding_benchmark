#pragma once

//#include <QtOpenGL/QGLWidget>
#include <math.h>

class ViewWidget : public QGLWidget {

    Q_OBJECT

public:
    ViewWidget(QWidget *parent = NULL);
    void DrawLine(float, float, float, float, float);
    void DrawCircle(float x, float y, float r);

protected:
    void initializeGL();
    void resizeGL(int w, int h);
    void paintGL();

};
