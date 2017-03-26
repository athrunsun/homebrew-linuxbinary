class IntellijIdeaCeNoJdk < Formula
    desc "The Most Intelligent Java IDE, community edition (without bundled JDK)."
    homepage "http://www.jetbrains.com/idea/"
    version "2017.1"
    url "https://download.jetbrains.com/idea/ideaIC-#{version}-no-jdk.tar.gz"
    sha256 "b3fb17b3c6ed52df07c33bbe2a1b7fc0ca84c1e492e986c8707f57425ef76513"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/idea.sh" => "ideacn"})
    end

    def caveats; <<-EOS.undent
        Executable is linked as "ideacn" so that it doesn't conflict with intellij-idea-ce.
        EOS
    end
end
