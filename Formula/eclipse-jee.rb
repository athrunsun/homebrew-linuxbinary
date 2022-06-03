class EclipseJee < Formula
    desc "Tools for Java developers creating Java EE and Web applications, including a Java IDE, tools for Java EE, JPA, JSF, Mylyn, EGit and others."
    homepage "https://www.eclipse.org/"
    version "4.6.1"

    url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/neon/1a/eclipse-jee-neon-1a-linux-gtk-x86_64.tar.gz&r=1"
    sha256 "edadd11440d94436665ca0435e8e1a371cef3b187e9d85a17be301e1ee1fc807"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/eclipse" => "eclipse")
    end
end
