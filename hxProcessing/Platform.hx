package hxProcessing;

@:enum abstract Platform(String) from String to String {
    var windows_i586 = "windows-i586";
    var windows_amd64 = "windows-amd64";
    var macosx_universal = "macosx-universal";
    var linux_i586 = "linux-i586";
    var linux_amd64 = "linux-amd64";
    var linux_armv6hf = "linux-armv6hf";
}