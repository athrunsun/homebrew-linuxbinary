class IntellijIdeaCeNoJdk < Formula
    desc "The Most Intelligent Java IDE, community edition (without bundled JDK)."
    homepage "http://www.jetbrains.com/idea/"
    version "2018.1.2"
    url "https://download.jetbrains.com/idea/ideaIC-#{version}-no-jdk.tar.gz"
    sha256 "3b26978d13650a717778de327613a848b0c3e8e28d19246dd134dc03f7fd1ef2"

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
