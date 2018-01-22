class IntellijIdeaCeNoJdk < Formula
    desc "The Most Intelligent Java IDE, community edition (without bundled JDK)."
    homepage "http://www.jetbrains.com/idea/"
    version "2017.1.4"
    url "https://download.jetbrains.com/idea/ideaIC-#{version}-no-jdk.tar.gz"
    sha256 "ea90fce3f93c4eaa58036278f630a0545ae0b191fa3bff48f480f2b268867cb0"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/idea.sh" => "ideacn")
    end

    def caveats; <<~EOS
        Executable is linked as "ideacn" so that it doesn't conflict with intellij-idea-ce.
        EOS
    end
end
