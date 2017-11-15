class DotnetCoreSdkUbuntuXenial < Formula
    desc "ASP.NET Core is a new cross-platform version of ASP.NET that is designed for the cloud, and runs on Windows, Linux and Mac. This is the SDK download for Ubuntu 16.04 (Xenial)."
    homepage "https://www.microsoft.com/net/core"
    version "1.0.4"

    url "https://download.microsoft.com/download/E/7/8/E782433E-7737-4E6C-BFBF-290A0A81C3D7/dotnet-dev-ubuntu.16.04-x64.#{version}.tar.gz"
    sha256 "6fb4ec609b00bd65881f864249741d6486ba19da5b76cfcb60d03df8799b6ab7"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/dotnet")
    end
end
