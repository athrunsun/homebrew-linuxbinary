class AnnieBinary < Formula
    desc "A fast, simple and clean video downloader."
    homepage "https://github.com/iawia002/annie"
    version "0.7.4"

    if MacOS.prefer_64_bit?
        url "https://github.com/iawia002/annie/releases/download/#{version}/annie_#{version}_Linux_64-bit.tar.gz"
        sha256 "12299b7dda1869f8c48e2fdb008d6c18c5b4b0c3e9432df2253e4702361db45d"
    else
        url "https://github.com/iawia002/annie/releases/download/#{version}/annie_#{version}_Linux_32-bit.tar.gz"
        sha256 "b38a184a6fefab614d39a0dfc4a98d73cad959047c2a9a12cf1a8b642ebb7d73"
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
