class Blackboardsync < Formula
  include Language::Python::Virtualenv

  desc "Command-line utility to sync Blackboard content"
  homepage "https://github.com/sanjacob/BlackboardSync"
  url "https://github.com/sanjacob/BlackboardSync/archive/refs/heads/main.zip"
  version "0.1.0"
  sha256 "4f58a5bb6458a0d259bba7ee0332f933ddab3bdee21f93cac0774416b0af14ca"
  license "MIT"

  depends_on "python@3.11"

  def install
    venv = virtualenv_create(libexec, "python3.11")
    venv.pip_install_and_link buildpath
  end

  test do
    system bin/"blackboardsync", "--version"
  end
end
