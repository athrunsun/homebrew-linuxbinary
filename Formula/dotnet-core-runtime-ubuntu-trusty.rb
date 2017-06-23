class DotnetCoreRuntimeUbuntuTrusty < Formula
    desc "ASP.NET Core is a new cross-platform version of ASP.NET that is designed for the cloud, and runs on Windows, Linux and Mac. This is the runtime download for Ubuntu 14.04 (Trusty)."
    homepage "https://www.microsoft.com/net/core"
    version "1.1.2"

    url "https://download.microsoft.com/download/D/7/A/D7A9E4E9-5D25-4F0C-B071-210CB8267943/dotnet-ubuntu-x64.#{version}.tar.gz"
    sha256 "9032e88d43d28004ac10618ef0abac502cdeb02228297d1b51dd67c7e40cd3d1"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/dotnet")
    end
end
