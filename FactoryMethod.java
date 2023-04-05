import java.lang.System;
import java.lang.Math;

interface Button {
    void render();

    void onClick(Void f);
}

class WebButton implements Button {

    @Override
    public void render() {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'render'");
    }

    @Override
    public void onClick(Void f) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'onClick'");
    }
}

class WindowsButton implements Button {

    @Override
    public void render() {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'render'");
    }

    @Override
    public void onClick(Void f) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'onClick'");
    }
}

abstract class Dialog {

}

public class FactoryMethod {
    public static void main(String[] args) {
        double a = 123;
        double b = 123;
        System.out.println(Math.pow(a, b));
    }
}