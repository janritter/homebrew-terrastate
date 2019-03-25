# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    url "https://github.com/janritter/terrastate/releases/download/1.2.0/darwin_amd64_terrastate"
    sha256 "f05b6470ba3ca558b91f57ea5c9793d76eba29c07c4e5a9c31b6a6063fb6e4ec"
  
    def install
      bin.install "darwin_amd64_terrastate"
      mv bin/"darwin_amd64_terrastate", bin/"terrastate"
    end
  
    test do
      system "false"
    end
  end
