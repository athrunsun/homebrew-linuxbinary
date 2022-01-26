class PowershellBinary < Formula
    desc "PowerShell for every system"
    homepage "https://github.com/PowerShell/PowerShell"
    version "7.2.1"

    option "with-cn-mirror", "Download from China mainland mirror."

    if build.with? "cn-mirror"
        url "https://s3.jcloud.sjtu.edu.cn/899a892efef34b1b944a19981040f55b-oss01/github-release/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}-linux-x64.tar.gz"
    else
        url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}-linux-x64.tar.gz"
    end

    sha256 "337d9864799ad09b46d261071b9f835f69f078814409bc2681f4cc2857b6bda5"

    def install
        libexec.install Dir["*"]
        chmod(0755, "#{libexec}/pwsh")
        bin.install_symlink("#{libexec}/pwsh" => "pwsh")
    end

    def caveats; <<~EOS
        Executable is linked as "pwsh".
        EOS
    end
end
