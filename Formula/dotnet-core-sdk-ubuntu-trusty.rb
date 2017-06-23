class DotnetCoreSdkUbuntuTrusty < Formula
    desc "ASP.NET Core is a new cross-platform version of ASP.NET that is designed for the cloud, and runs on Windows, Linux and Mac. This is the SDK download for Ubuntu 14.04 (Trusty)."
    homepage "https://www.microsoft.com/net/core"
    version "1.0.4"

    url "https://download.microsoft.com/download/E/7/8/E782433E-7737-4E6C-BFBF-290A0A81C3D7/dotnet-dev-ubuntu-x64.#{version}.tar.gz"
    sha256 "e3823b9f964d27d1434f0e52b93fb1b6a65e83fb275e01f65ecbe63a4242fbe5"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/dotnet")
    end
end
