class AnnieBinary < Formula
    desc "A fast, simple and clean video downloader."
    homepage "https://github.com/iawia002/annie"
    version "0.9.3"

    url "https://github.com/iawia002/annie/releases/download/#{version}/annie_#{version}_Linux_64-bit.tar.gz"
    sha256 "e1173ad44456403e4ce9a95fa6676216870a29b0f3bc45111eb6debf5b96d64f"

    bottle :unneeded
    conflicts_with "annie"

    def install
        libexec.install Dir["*"]
        chmod(0755, "#{libexec}/annie")
        bin.install_symlink("#{libexec}/annie" => "annie")
    end

    def caveats; <<~EOS
        Executable is linked as "annie".
        EOS
    end
end
