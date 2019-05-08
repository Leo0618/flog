# flog

A flutter plugin project for console log just like android log.

## How to use

**1.Depend on it**

Add this to your package's pubspec.yaml file:

    dependencies:
        flog:
            git: https://github.com/Leo0618/flog.git
                        
**2.Install it**

You can install packages from the command line:

with Flutter

    $ flutter packages get
    
**3.Import it**

Now in your Dart code, you can use:

    import 'package:flog/flog.dart';
    
    
**Available Methods (example)**

    ///config log enable or not
    Flog.config(true);

    Flog.v('this is a message with v.');
    Flog.v('this is a message with v.', tag: 'okfood');

    Flog.d('this is a message with d.');
    Flog.d('this is a message with d.', tag: 'okfood');

    Flog.i('this is a message with i.');
    Flog.i('this is a message with i.', tag: 'okfood');

    Flog.w('this is a message with w.');
    Flog.w('this is a message with w.', tag: 'okfood');

    Flog.e('this is a message with e.');
    Flog.e('this is a message with e.', tag: 'okfood');

    Flog.println('this is a message with print.');
