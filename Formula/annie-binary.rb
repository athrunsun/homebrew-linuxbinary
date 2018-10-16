class AnnieBinary < Formula
    desc "A fast, simple and clean video downloader."
    homepage "https://github.com/iawia002/annie"
    version "0.8.2"

    if MacOS.prefer_64_bit?
        url "https://github.com/iawia002/annie/releases/download/#{version}/annie_#{version}_Linux_64-bit.tar.gz"
        sha256 "d8d2d3ab9e4c461df9344267f804840cd8570ec10df4afdc6303790b5c6e0df3"
    else
        url "https://github.com/iawia002/annie/releases/download/#{version}/annie_#{version}_Linux_32-bit.tar.gz"
        sha256 "7e84e5576ed0800a1b75b0b419f348522ca8a19cb7d2415b7efbe5bf6582d418"
    end

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
