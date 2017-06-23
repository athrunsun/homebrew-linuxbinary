class AndroidStudio < Formula
    desc "The official Android IDE."
    homepage "https://developer.android.com/sdk/"
    version "1.5.1.0"
    url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-141.2456560-linux.zip"
    sha256 "466e01ac99c44685f218cf8dfc621fcc6b1d2c18256d97dbefa377d06410d05c"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/studio.sh" => "android_studio")
    end
end
