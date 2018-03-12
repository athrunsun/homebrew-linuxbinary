class ElectronicWechat < Formula
    desc "The Most Intelligent Java IDE, community editionA better WeChat on macOS and Linux. Built with Electron by Zhongyi Tong."
    homepage "https://github.com/geeeeeeeeek/electronic-wechat"
    version "2.0"
    url "https://github.com/geeeeeeeeek/electronic-wechat/releases/download/V#{version}/linux-x64.tar.gz"
    sha256 "e4922c16c8a283597698ffdd827347398cee80cb93580b8b3aa8d618e03b355c"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/electronic-wechat" => "ewechat"})
    end

    def caveats; <<~EOS
        Executable is linked as "ewechat".
        EOS
    end
end
