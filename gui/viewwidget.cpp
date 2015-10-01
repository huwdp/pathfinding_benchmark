#include "viewwidget.h"

#include <QtGui/QMouseEvent>


ViewWidget::ViewWidget(QWidget *parent) : QGLWidget(parent) {
    setMouseTracking(true);
}

void ViewWidget::initializeGL() {
    glDisable(GL_TEXTURE_2D);
    glDisable(GL_DEPTH_TEST);
    glDisable(GL_COLOR_MATERIAL);
    glEnable(GL_BLEND);
    glEnable(GL_POLYGON_SMOOTH);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    glClearColor(1, 1, 1, 0);
}

void ViewWidget::resizeGL(int w, int h) {
    glViewport(0, 0, w, h);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
}

void ViewWidget::paintGL() {
    glClear(GL_COLOR_BUFFER_BIT);
    glColor3f(0.0,0.0,0.0);
    //this->DrawLine(0.0f,0.0f,1.0f,1.0f,2.0f);
    //this->DrawCir0,0,0.1);
    //this->DrawEllipse(1,1,0.1);
}

void ViewWidget::DrawLine(float x1, float y1, float x2, float y2, float width)
{
    glLineWidth(width);
    glBegin(GL_LINES);
        glVertex2f(x1, y1);
        glVertex2f(x2, y2);
    glEnd();
}

void ViewWidget::DrawCircle(float x, float y, float r)
{
    glBegin(GL_POLYGON);
        for (int i = 0; i < 360; i++)
        {
            float theta = i;
            float a = x + r * cos(theta);
            float b = y + r * sin(theta);
            glVertex2d(a,b);
        }
    glEnd();
}







