class JetbrainsToolbox < Formula
    desc "A control panel for your tools and projects."
    homepage "https://www.jetbrains.com/toolbox/app/"
    version "1.6.2914"
    url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.tar.gz"
    sha256 "b634aeec655044a02361ca2541ea891a0b34019cc6ccfbef7a39824a00be5a10"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/jetbrains-toolbox" => "jbtool")
    end

    def caveats; <<~EOS
        Executable is linked as "jbtool".
        EOS
    end
end
