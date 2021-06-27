# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.9.0/darwin_amd64_terrastate"
      sha256 "660d4e5c622774359fa1a69c59531282c063742f4c7b3b2b24ce15ab245a7855"
      version "1.9.0"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.9.0/linux_amd64_terrastate"
      sha256 "08593ddf57eae4f63790a8a0425c7e554353ef77366b7c65b7b18e3b7468d075"
      version "1.9.0"
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