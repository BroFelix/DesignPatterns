abstract class Button {
  void render();
  void onClick(Function pressed);
}

class WindowsButton implements Button {
  @override
  void render() {
    print('It\'s WindowsButton');
  }

  @override
  void onClick(Function pressed) {
    pressed.call();
  }
}

class WebButton implements Button {
  @override
  void render() {
    print('It\'s WebButton');
  }

  @override
  void onClick(Function pressed) {
    pressed.call();
  }
}

abstract class Dialog {
  void render() {
    Button okButton = createButton();
    okButton.onClick(() {
      print('Sk');
    });
    okButton.render();
  }

  Button createButton();
}

class WindowsDialog extends Dialog {
  @override
  Button createButton() {
    return WindowsButton();
  }
}

class WebDialog extends Dialog {
  @override
  Button createButton() {
    return WebButton();
  }
}

void main(List<String> args) {
  Dialog newDialog = WebDialog();
  newDialog.createButton().render();
}
