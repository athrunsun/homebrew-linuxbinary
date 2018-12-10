class Zoom < Formula
    desc "Video Conferencing, Web Conferencing, Webinars, Screen Sharing"
    homepage "https://zoom.us"
    version "2.6.146750.1204"

    url "https://zoom.us/client/#{version}/zoom_x86_64.tar.xz"
    sha256 "2f6b881b4112afa231165059e35d87191f99300316cb827272d670ff5ea097a1"

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
