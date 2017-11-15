class DotnetCoreRuntimeLtsUbuntuXenial < Formula
    desc "ASP.NET Core is a new cross-platform version of ASP.NET that is designed for the cloud, and runs on Windows, Linux and Mac. This is the LTS runtime download for Ubuntu 16.04 (Xenial)."
    homepage "https://www.microsoft.com/net/core"
    version "1.0.5"

    url "https://download.microsoft.com/download/D/7/A/D7A9E4E9-5D25-4F0C-B071-210CB8267943/dotnet-ubuntu.16.04-x64.#{version}.tar.gz"
    sha256 "cec3ed3464a0982b92d92d46088039f302c5b861c8dd13db90d2d99eb9e7fa96"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/dotnet")
    end
end
