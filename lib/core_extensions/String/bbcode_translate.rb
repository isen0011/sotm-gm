module CoreExtensions
  module String
    module BBCodeTranslate
      def bbcode_translate
        
        [ [ /\[(\/?\s*[biu])\]/, "<\\1>"], # match "[/ x]" where there may or may not be a /, space after the /, and x is b, i, or u
          [ /\n/, "<br />" ], #replace newlines with html line breaks
        ].inject(self) { |str, (p,r)| str.gsub(p,r) } #  run gsub for each pattern/replace pair on self                
      end
    end
  end
end