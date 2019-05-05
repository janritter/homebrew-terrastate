# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    url "https://github.com/janritter/terrastate/releases/download/1.2.0/darwin_amd64_terrastate"
    sha256 "fe22095fffbcc177a9184c815f169fcc5e8e0511f622d7e669e30a8333ca92a5"
    version 1.2.0
  
    def install
      bin.install "darwin_amd64_terrastate"
      mv bin/"darwin_amd64_terrastate", bin/"terrastate"
    end
  
    test do
      system "false"
    end
  end