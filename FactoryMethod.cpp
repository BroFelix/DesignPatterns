#include <iostream>
using namespace std;

class Button
{
public:
    void render;
    void onClick;
};

class WindowsButton : public Button
{
public:
    void render()
    {
        cout << "WindowsButton is rendered\n";
    }
    void onClick()
    {
        cout << "WindowsButton is clicked\n";
    }
};

class LinuxButton : public Button
{
public:
    void render()
    {
        cout << "LinuxButton is rendered\n";
    }
    void onClick()
    {
        cout << "WindowsButton is clicked\n";
    }
};

class WebButton : public Button
{
public:
    void render()
    {
        cout << "WebButton is rendered\n";
    }
    void onClick()
    {
        cout << "WindowsButton is clicked\n";
    }
};

class Dialog
{
public:
    void build;
    Button render()
    {
        Button okButton = build();
        okButton.onClick();
        okButton.render();
    }
};

class WindowsButton : public Dialog
{
public:
    Button build()
    {
        return WindowsButton();
    }
};

class LinuxButton : public Dialog
{
public:
    Button build()
    {
        return LinuxButton();
    }
};

class WebButton : public Dialog
{
public:
    Button build()
    {
        return WebButton();
    }
};

int main()
{
    return 0;
}