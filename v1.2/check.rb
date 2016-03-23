# -*- coding: utf-8 -*-
def check
  words = File.open("REJECT") {|f| f.read.split(/\n/) }
  files = `ls *.md`.split(/\n/)

  files.each do |file|
    puts "----------------------------------------------------------" + file
    words.each do |word|
      next if word =~ /\A#/
      w = word.split(/#/).first.gsub(/\s/, '')
      if w =~ /!/
        w, *ngs = *w.split(/!/)
      end

      File.open(file).each do |line|
        # 排除文字を適当な文字列に置換
        if !ngs.nil? and !ngs.empty?
          ngs.map!{|i| i.gsub(/\s/, '')}
          ngs.each_with_index do |ng, idx|
            line.gsub!(ng, "######{idx}")
          end
        end

        if line.gsub!(w, "\e[35m#{w}\e[0m")
          # 適当な文字列を元に戻す
          if !ngs.nil? and !ngs.empty?
            ngs.map!{|i| i.gsub(/\s/, '')}
            ngs.each_with_index do |ng, idx|
              line.gsub!("######{idx}", ng)
            end
          end
          puts "\e[36m========== " + word + "\e[0m\n"
          puts line + "\n"
        end
      end
    end
  end
end

check
