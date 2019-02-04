class AnnieBinary < Formula
    desc "A fast, simple and clean video downloader."
    homepage "https://github.com/iawia002/annie"
    version "0.9.1"

    url "https://github.com/iawia002/annie/releases/download/#{version}/annie_#{version}_Linux_64-bit.tar.gz"
    sha256 "79e928dd226780637908763d3cf41f5fe4bad386210ea4e830c83539e26536b3"

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
