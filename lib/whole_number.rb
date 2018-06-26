require "whole_number/version"

module WholeNumber
  Integer.module_eval do |m|
    def to_whole_num
      if self > 0
        self
      else
        0
      end
    end
  end

  Float.module_eval do |m|
    def to_whole_num
      self.to_i.to_whole_num
    end
  end
end
