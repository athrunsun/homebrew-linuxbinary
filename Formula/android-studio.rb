class AndroidStudio < Formula
    desc "The official Android IDE."
    homepage "https://developer.android.com/studio/"
    version "3.2.1.0"
    
    url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-181.5056338-linux.zip"
    sha256 "b9ec0d44f2feaafe1e3fbd1ed696bf325f9e05cfb6c1ace84dbf87ae249efa84"

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
