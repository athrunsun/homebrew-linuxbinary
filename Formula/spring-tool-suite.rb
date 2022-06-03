class SpringToolSuite < Formula
    desc "The next generation of Spring tooling for your favorite coding environment."
    homepage "https://spring.io/tools"
    version "4.2.0"

    url "https://download.springsource.com/release/STS4/4.2.0.RELEASE/dist/e4.11/spring-tool-suite-4-4.2.0.RELEASE-e4.11.0-linux.gtk.x86_64.tar.gz"
    sha256 "1389c83a039eb2eba4d5a378bab5c9abdf677e5dc88a47512b9058deb90ed788"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/SpringToolSuite4" => "sts")
    end

    def caveats; <<~EOS
        Executable is linked as "sts".
        EOS
    end
end
