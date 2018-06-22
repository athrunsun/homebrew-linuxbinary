class BaiduPcsGo < Formula
    desc "Baidu Personal-Cloud-Storage CLI client."
    homepage "https://github.com/iikira/BaiduPCS-Go"
    version "3.5.3"

    if MacOS.prefer_64_bit?
        url "https://github.com/iikira/BaiduPCS-Go/releases/download/v#{version}/BaiduPCS-Go-v#{version}-linux-amd64.zip"
        sha256 "6887348148e8f50c04af463fe49ced8d7f72eb8664a8921591086f9cc89213f3"
    else
        url "https://github.com/iikira/BaiduPCS-Go/releases/download/v#{version}/BaiduPCS-Go-v#{version}-linux-386.zip"
        sha256 "e4926ddb861c543449c498e9d67becabd4b21512a3f5f7c51494553a52148a97"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/BaiduPCS-Go" => "bdpcs")
    end

    def caveats; <<~EOS
        Executable is linked as "bdpcs".
        EOS
    end
end
