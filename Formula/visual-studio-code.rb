class VisualStudioCode < Formula
    desc "VS Code is a new type of tool that combines the simplicity of a code editor with what developers need for their core edit-build-debug cycle. This is the stable version."
    homepage "https://code.visualstudio.com/"
    version "1.17.2"

    if MacOS.prefer_64_bit?
        url "https://az764295.vo.msecnd.net/stable/b813d12980308015bcd2b3a2f6efa5c810c33ba5/code-stable-code_#{version}-1508162334_amd64.tar.gz"
        sha256 "b93e2a282fdae04f355aa6e76fc4c15fb3452f4bcb64019d508a3a8337e76778"
    else
        url "https://az764295.vo.msecnd.net/stable/b813d12980308015bcd2b3a2f6efa5c810c33ba5/code-stable-code_#{version}-1508162326_i386.tar.gz"
        sha256 "028ac50b98141c072caf275363465073f9d3321ec410cc547bee4d7cc991b612"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/code")
    end
end
