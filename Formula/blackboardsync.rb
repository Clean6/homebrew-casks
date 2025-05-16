class Blackboardsync < Formula
  include Language::Python::Virtualenv

  desc "Command-line utility to sync Blackboard content"
  homepage "https://github.com/sanjacob/BlackboardSync"
  url "https://github.com/sanjacob/BlackboardSync/archive/refs/heads/main.zip"
  version "0.1.0"
  sha256 :no_check
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"blackboardsync", "--version"
  end
end
