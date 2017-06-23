class EclipseJee < Formula
    desc "Tools for Java developers creating Java EE and Web applications, including a Java IDE, tools for Java EE, JPA, JSF, Mylyn, EGit and others."
    homepage "https://www.eclipse.org/"
    version "4.6.1"

    if MacOS.prefer_64_bit?
        url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/neon/1a/eclipse-jee-neon-1a-linux-gtk-x86_64.tar.gz&r=1"
        sha256 "edadd11440d94436665ca0435e8e1a371cef3b187e9d85a17be301e1ee1fc807"
    else
        url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/neon/1a/eclipse-jee-neon-1a-linux-gtk.tar.gz&r=1"
        sha256 "48f4945410461cadb265212419c4b8de2e5bc025b1e0c3545e2b81f9ea52f3db"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/eclipse" => "eclipse")
    end
end
