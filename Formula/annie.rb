class Annie < Formula
    desc "A fast, simple and clean video downloader."
    homepage "https://github.com/iawia002/annie"
    version "0.6.5"

    if MacOS.prefer_64_bit?
        url "https://github.com/iawia002/annie/releases/download/#{version}/annie_linux_amd64"
        sha256 "bdb4b5058aaee7a7cd5be52c6cc7258607b6d1003c1ffd02cc97927f331d33b9"
    else
        url "https://github.com/iawia002/annie/releases/download/#{version}/annie_linux_386"
        sha256 "0c52a0fec1eb2020f96cd27f4af2f0a0efe18e3c9049db9af21b71bd9d8841e1"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        
        if MacOS.prefer_64_bit?
            mv("#{libexec}/annie_linux_amd64", "#{libexec}/annie")
        else
            mv("#{libexec}/annie_linux_386", "#{libexec}/annie")
        end

        chmod(0755, "#{libexec}/annie")
        bin.install_symlink("#{libexec}/annie" => "annie")
    end

    def caveats; <<~EOS
        Executable is linked as "annie".
        EOS
    end
end
