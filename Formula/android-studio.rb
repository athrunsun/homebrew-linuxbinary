class AndroidStudio < Formula
    desc "The official Android IDE."
    homepage "https://developer.android.com/studio/"
    version "3.1.1.0"
    url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-173.4697961-linux.zip"
    sha256 "08539019cda4f9228f6e08d9fda8933a71ecae29eac75f8d31e743816315c076"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/studio.sh" => "android_studio")
    end

    def caveats; <<~EOS
        Executable is linked as "android_studio".
        EOS
    end
end
