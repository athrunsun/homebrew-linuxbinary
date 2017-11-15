class DotnetCoreRuntimeLtsUbuntuTrusty < Formula
    desc "ASP.NET Core is a new cross-platform version of ASP.NET that is designed for the cloud, and runs on Windows, Linux and Mac. This is the LTS runtime download for Ubuntu 14.04 (Trusty)."
    homepage "https://www.microsoft.com/net/core"
    version "1.0.5"

    url "https://download.microsoft.com/download/2/4/A/24A06858-E8AC-469B-8AE6-D0CEC9BA982A/dotnet-ubuntu-x64.#{version}.tar.gz"
    sha256 "860a22f2adc783a1ab10cb373109682d32435c76b9045bc9966d097512bec937"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/dotnet")
    end
end
