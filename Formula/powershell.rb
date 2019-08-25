class Powershell < Formula
    desc "PowerShell for every system"
    homepage "https://github.com/PowerShell/PowerShell"
    version "6.2.2"

    url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}-linux-x64.tar.gz"
    sha256 "7C98B4471B13FE358A4DF51E7E9315746CFCAD9C557823D63772873796C192E5"

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
