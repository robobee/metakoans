class Module
  def attribute(attr_name)
    attr_name = attr_name.to_s
    attr_accessor attr_name
    class_eval %Q{
      def #{attr_name}?
        if #{attr_name}
          true
        else
          false
        end
      end
      }
  end
end
