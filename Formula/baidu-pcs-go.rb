class BaiduPcsGo < Formula
    desc "Baidu Personal-Cloud-Storage CLI client."
    homepage "https://github.com/iikira/BaiduPCS-Go"
    version "3.5.6"

    url "https://github.com/iikira/BaiduPCS-Go/releases/download/v#{version}/BaiduPCS-Go-v#{version}-linux-amd64.zip"
    sha256 "d55a391470789944f019bf757fd02a08a7d63ad88662528209256076c8264fdd"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/BaiduPCS-Go" => "bdpcs")
    end

    def caveats; <<~EOS
        Executable is linked as "bdpcs".
        EOS
    end
end
