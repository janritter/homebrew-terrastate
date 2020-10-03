# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.7.1/darwin_amd64_terrastate"
      sha256 "65487a252bbfdb3472172ddd5799ca7bffaac80658f1a85c91143f6fd1a95f46"
      version "1.7.1"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.7.1/linux_amd64_terrastate"
      sha256 "b27127587b58d7e0bd67fae6b25f057f14eb00bf50190602ad839db2a76f7976"
      version "1.7.1"
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