class PasswordManager < Formula
  desc "Encrypt your passwords into a file and have access with ease."
  homepage "https://github.com/ThilinaManamgoda/password-manager"
  version "v0.9.2"
  url "https://github.com/ThilinaManamgoda/password-manager/releases/download/v0.9.2/password-manager-darwin-v0.9.2.tar.gz"
  sha256 "165201e1690d05ece6fe6834a20d97eb5c804b6f0a55e348323f59d55b285955"

  def install
    bin.install "password-manager"
    system "chmod", "+x", "#{bin}/password-manager"
  end

  test do
    assert_equal "password-manager version " + version, shell_output("#{bin}/password-manager --version").strip
  end
end
