class AndroidCliTools < Formula
    desc "Android command line tools (when you don't need Android Studio)."
    homepage "https://developer.android.com/studio/"
    version "4333796"
    
    url "https://dl.google.com/android/repository/sdk-tools-linux-#{version}.zip"
    sha256 "92ffee5a1d98d856634e8b71132e8a95d96c83a63fde1099be3d86df3106def9"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/android" => "android")
        bin.install_symlink("#{libexec}/emulator" => "emulator")
        bin.install_symlink("#{libexec}/emulator-check" => "emulator-check")
        bin.install_symlink("#{libexec}/mksdcard" => "mksdcard")
        bin.install_symlink("#{libexec}/monitor" => "monitor")
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end
end
