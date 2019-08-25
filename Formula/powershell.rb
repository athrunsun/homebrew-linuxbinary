class Powershell < Formula
    desc "PowerShell for every system"
    homepage "https://github.com/PowerShell/PowerShell"
    version "6.2.2"

    url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}-linux-x64.tar.gz"
    sha256 "7c98b4471b13fe358a4df51e7e9315746cfcad9c557823d63772873796c192e5"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/pwsh" => "pwsh")
    end

    def caveats; <<~EOS
        Executable is linked as "pwsh".
        EOS
    end
end
