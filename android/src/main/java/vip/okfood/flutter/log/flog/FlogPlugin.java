package vip.okfood.flutter.log.flog;

import android.util.Log;


import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** FlogPlugin */
public class FlogPlugin implements MethodCallHandler {
    /** Plugin registration. */
    public static void registerWith(Registrar registrar) {
        final MethodChannel channel = new MethodChannel(registrar.messenger(), "flog");
        channel.setMethodCallHandler(new FlogPlugin());
    }

    @Override
    public void onMethodCall(MethodCall methodCall, Result result) {
        String tag = methodCall.argument("tag");
        String msg = methodCall.argument("msg");
        switch(methodCall.method) {
            case "logV":
                Log.v(tag, msg);
                break;
            case "logD":
                Log.d(tag, msg);
                break;
            case "logI":
                Log.i(tag, msg);
                break;
            case "logW":
                Log.w(tag, msg);
                break;
            case "logE":
                Log.e(tag, msg);
                break;
            default:
                Log.d(tag, msg);
                break;
        }
    }
}
