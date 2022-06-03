class Blender < Formula
    desc "free and open source 3D creation suite."
    homepage "https://www.blender.org"
    version "2.79"

    url "https://download.blender.org/release/Blender2.79/blender-2.79b-linux-glibc219-x86_64.tar.bz2"
    sha256 "43824a4e0b0c6de6fa34ff224eec44c1cc9f26a95f6f3c8c2558d1c05704183c"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/blender")
    end

    def caveats; <<~EOS
        Executable is linked as "blender".
        EOS
    end
end
