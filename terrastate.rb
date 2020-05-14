# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.5.0/darwin_amd64_terrastate"
      sha256 "80445aa6d1d16eedd3a83a73bd0161189d5b797ec9467ca7c0b57a05960c0660"
      version "1.5.0"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.5.0/linux_amd64_terrastate"
      sha256 "6f1d661dad730f0a75aef794d39ed8f4a18ce8e2ddc1998a7ce88c91480bb0eb"
      version "1.5.0"
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