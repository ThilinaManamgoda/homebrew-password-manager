class PasswordManager < Formula
  desc "Encrypt your passwords into a file and have easy access."
  homepage "https://thilinamanamgoda.github.io/password-manager/"
  version "v0.9.3"
  url "https://github.com/ThilinaManamgoda/password-manager/releases/download/v0.9.3/password-manager-darwin-v0.9.3.tar.gz"
  sha256 "d77321673a67d4c48671cca94d0c6d66f8dccd249cd7f92b5b6036252e0cf043"

  def install
    bin.install "password-manager"
    system "chmod", "+x", "#{bin}/password-manager"
  end

  test do
    assert_equal "password-manager version " + version, shell_output("#{bin}/password-manager --version").strip
  end
end
