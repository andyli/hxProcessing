package hxProcessing;

class NativeLib {
    static function getCurrentPlatform():Platform {
        return switch (Sys.systemName()) {
            case "Windows": windows_i586;
            case "Mac": macosx_universal;
            case "Linux": linux_i586;
            case sysName: throw 'unknown Processing platform for $sysName';
        }
    }

    static public function add():Void {
        var platform:Platform = switch (haxe.macro.Compiler.getDefine("HXPROCESSING_PLATFORM")) {
            case null:
                var p = getCurrentPlatform();
                haxe.macro.Compiler.define("HXPROCESSING_PLATFORM", p);
                p;
            case v: v;
        }
        haxe.macro.Compiler.addNativeLib('lib/processing/gluegen-rt-natives-${platform}.jar');
        haxe.macro.Compiler.addNativeLib('lib/processing/jogl-all-natives-${platform}.jar');
    }
}