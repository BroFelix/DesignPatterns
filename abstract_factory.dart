import 'dart:io';

abstract class Button {
  void paint();
}

class WindowsButton extends Button {
  @override
  void paint() {
    // TODO: implement paint
  }
}

class MacButton extends Button {
  @override
  void paint() {
    // TODO: implement paint
  }
}

class LinuxButton extends Button {
  @override
  void paint() {
    // TODO: implement paint
  }
}

abstract class CheckBox {
  void paint();
  bool isChecked();
}

class WindowsCheckBox extends CheckBox {
  @override
  bool isChecked() {
    // TODO: implement isChecked
    throw UnimplementedError();
  }

  @override
  void paint() {
    // TODO: implement paint
  }
}

class MacCheckBox extends CheckBox {
  @override
  bool isChecked() {
    // TODO: implement isChecked
    throw UnimplementedError();
  }

  @override
  void paint() {
    // TODO: implement paint
  }
}

class LinuxCheckBox extends CheckBox {
  @override
  bool isChecked() {
    // TODO: implement isChecked
    throw UnimplementedError();
  }

  @override
  void paint() {
    // TODO: implement paint
  }
}

abstract class TextView {
  void paint();
}

class WindowsTextView extends TextView {
  @override
  void paint() {
    // TODO: implement paint
  }
}

class MacTextView extends TextView {
  @override
  void paint() {
    // TODO: implement paint
  }
}

class LinuxTextView extends TextView {
  @override
  void paint() {
    // TODO: implement paint
  }
}

abstract class GUIFactory {
  Button createButton();
  CheckBox createCheckBox();
  TextView createTextView();
}

class WindowsFactory extends GUIFactory {
  @override
  Button createButton() {
    return WindowsButton();
  }

  @override
  TextView createTextView() {
    return WindowsTextView();
  }

  @override
  CheckBox createCheckBox() {
    return WindowsCheckBox();
  }
}

class MacFactory extends GUIFactory {
  @override
  Button createButton() {
    return MacButton();
  }

  @override
  TextView createTextView() {
    return MacTextView();
  }

  @override
  CheckBox createCheckBox() {
    return MacCheckBox();
  }
}

class LinuxFactory extends GUIFactory {
  @override
  Button createButton() {
    return LinuxButton();
  }

  @override
  TextView createTextView() {
    return LinuxTextView();
  }

  @override
  CheckBox createCheckBox() {
    return LinuxCheckBox();
  }
}

void main(List<String> args) {
  GUIFactory factory;
  if (Platform.isWindows) {
    factory = WindowsFactory();
  } else if (Platform.isMacOS) {
    factory = MacFactory();
  } else if (Platform.isLinux) {
    factory = LinuxFactory();
  } else {
    throw new Exception('Unknown PLatform');
  }
  print(factory.runtimeType);
  var button = factory.createButton();
  var checkbox = factory.createCheckBox();
  var text = factory.createTextView();
}
