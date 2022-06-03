class AndroidStudio < Formula
    desc "The official Android IDE."
    homepage "https://developer.android.com/studio/"
    version "3.3.1"
    
    url "https://dl.google.com/dl/android/studio/ide-zips/3.3.1.0/android-studio-ide-182.5264788-linux.zip"
    sha256 "82603100f772baf5b6b54532375ada756b4b2dc11854cabae267cd8bd8c4f039"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/studio.sh" => "android_studio")
    end

    def caveats; <<~EOS
        Executable is linked as "android_studio".
        EOS
    end
end
