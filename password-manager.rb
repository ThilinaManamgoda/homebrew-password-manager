class PasswordManager < Formula
  desc "A local password Manager"
  homepage "https://github.com/ThilinaManamgoda/password-manager"
  version "v0.8.0"
  url "https://github.com/ThilinaManamgoda/password-manager/releases/download/v0.8.0/password-manager-darwin-0.8.0.tar.gz"
  sha256 "00ea0603203e3486eaa118a0d860e405e38f4df43eadaf632bd2a97006eeef0c"

  def install
    bin.install "password-manager"
    system "chmod", "+x", "#{bin}/password-manager"
  end

  test do
    assert_equal "v0.8.0", shell_output("#{bin}/password-manager --version").strip
  end
end
