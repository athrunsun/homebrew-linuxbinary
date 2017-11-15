class JetbrainsToolbox < Formula
    desc "A control panel for your tools and projects."
    homepage "https://www.jetbrains.com/toolbox/app/"
    version "1.2.2314"
    url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.tar.gz"
    sha256 "d9734c1f43f89813cedbb8238df4f2103d697a7f392c7f9e422a6a37933bc572"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/jetbrains-toolbox" => "jbtool")
    end

    def caveats; <<-EOS.undent
        Executable is linked as "jbtool".
        EOS
    end
end
