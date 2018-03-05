class JetbrainsToolbox < Formula
    desc "A control panel for your tools and projects."
    homepage "https://www.jetbrains.com/toolbox/app/"
    version "1.7.3593"

    option "with-no-cdn", "Download from https://download-cf.jetbrains.com directly. Use this if CDN's version is behind, which will cause a hash mismatch."

    if build.with? "no-cdn"
        url "https://download-cf.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.tar.gz"
    else
        url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.tar.gz"
    end

    sha256 "388a9553ed6b25d2d042e1b46f517da2aa618581b0368e716e8380bca4eab976"

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
