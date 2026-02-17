# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/2.1.2/darwin_amd64_terrastate"
      sha256 "b2e6ae63c85debd4a976aa1a4bb4746413f43c67b7c01267f07d4c316cf432a6"
      version "2.1.2"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/2.1.2/linux_amd64_terrastate"
      sha256 "31664c98e00056bb3fd0b8a2ac07e4bfdc301d33bd4779cbe6c0734da7d8ad20"
      version "2.1.2"
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