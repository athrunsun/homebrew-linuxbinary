class DotnetCoreRuntimeUbuntuXenial < Formula
    desc "ASP.NET Core is a new cross-platform version of ASP.NET that is designed for the cloud, and runs on Windows, Linux and Mac. This is the runtime download for Ubuntu 16.04 (Xenial)."
    homepage "https://www.microsoft.com/net/core"
    version "1.1.2"

    url "https://download.microsoft.com/download/D/7/A/D7A9E4E9-5D25-4F0C-B071-210CB8267943/dotnet-ubuntu.16.04-x64.#{version}.tar.gz"
    sha256 "c003ccc3942e327aed42c395bdcfacfc703f5adc5ec69246588a8aaab52b1513"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/dotnet")
    end
end
