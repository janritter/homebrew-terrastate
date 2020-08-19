# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.6.0/darwin_amd64_terrastate"
      sha256 "82b1f1182d83500dfbe148989eb6e5437c6401613f46318cd402baa80b0535be"
      version "1.6.0"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.6.0/linux_amd64_terrastate"
      sha256 "5e8207955b04975b56d42fa423c6be304d66c2c962dd22b48f5e2d5b03ef12b1"
      version "1.6.0"
    end

    def install
      if OS.mac?
        bin.install "darwin_amd64_terrastate"
        mv bin/"darwin_amd64_terrastate", bin/"terrastate"
      elsif OS.linux?
        bin.install "linux_amd64_terrastate"
        mv bin/"linux_amd64_terrastate", bin/"terrastate"
      end
    end
  
    test do
      system "false"
    end
  end