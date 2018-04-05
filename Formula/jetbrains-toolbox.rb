class JetbrainsToolbox < Formula
    desc "A control panel for your tools and projects."
    homepage "https://www.jetbrains.com/toolbox/app/"
    version "1.8.3678"

    option "with-no-cdn", "Download from https://download-cf.jetbrains.com directly. Use this if CDN's version is behind, which will cause a hash mismatch."

    if build.with? "no-cdn"
        url "https://download-cf.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.tar.gz"
    else
        url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.tar.gz"
    end

    sha256 "bb98b94fa714ca07db31ac5bb42fbba2eac610c360541848e59adf0f8d84cefb"

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
