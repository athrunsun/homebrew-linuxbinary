class Zoom < Formula
    desc "Video Conferencing, Web Conferencing, Webinars, Screen Sharing"
    homepage "https://zoom.us"
    version "5.1.422789.0705"

    url "https://zoom.us/client/#{version}/zoom_x86_64.tar.xz"
    sha256 "ae1c2faf6b31b114fe0131f0ffabdf007b20983a1123b37cef4bf7a63a2984e9"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        (libexec/"zoom_brew_exec").write <<~EOS
            #!/usr/bin/env bash
            cd $(brew --prefix zoom)/libexec
            ./zoom
        EOS
        chmod(0755, "#{libexec}/zoom_brew_exec")
        bin.install_symlink("#{libexec}/zoom_brew_exec" => "zoom")
    end

    def caveats; <<~EOS
        You might need to install some dependencies like 'libxcb-xtest0'.
        Executable linked as "zoom".
        EOS
    end
end
