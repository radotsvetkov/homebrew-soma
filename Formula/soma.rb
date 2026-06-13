class Soma < Formula
  desc "Local-first AI agent governance with verifiable, tamper-evident audit trails"
  homepage "https://github.com/radotsvetkov/soma"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/radotsvetkov/soma/releases/download/v0.2.0/soma-aarch64-apple-darwin.tar.xz"
      sha256 "238c115b921db63af293ca1c9f5ac722fe7b27722ea17c8711c13cf4c2075161"
    end
    on_intel do
      url "https://github.com/radotsvetkov/soma/releases/download/v0.2.0/soma-x86_64-apple-darwin.tar.xz"
      sha256 "857737a0c26b7705274fe6ef13b7b4fbfa003e82319b71559f81deadd16a6028"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/radotsvetkov/soma/releases/download/v0.2.0/soma-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "460cc5a3665048a1cbeed349322f8e362124653b70b4faabcb3ca63860831639"
    end
    on_intel do
      url "https://github.com/radotsvetkov/soma/releases/download/v0.2.0/soma-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "e3600f51a31d051692a8cb0b2bc4d9f2bfe4593ff4ac13d59cf3d30690398abf"
    end
  end

  def install
    bin.install "soma"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/soma --version")
  end
end
