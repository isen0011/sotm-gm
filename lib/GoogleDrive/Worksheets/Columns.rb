module GoogleDrive
  module Worksheet
    module Columns
      def column(col)
        self.list.to_hash_array.map { |row| row[col]}
      end
    end
  end
end
        
       