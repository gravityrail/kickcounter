module SimpleForm
  module Inputs
    class Base
      alias_method :html_options_for_orig, :html_options_for
      def html_options_for(namespace, css_classes)
        result = html_options_for_orig(namespace, css_classes)
        if namespace == :input && ![SimpleForm::Inputs::CollectionRadioButtonsInput, SimpleForm::Inputs::BooleanInput, SimpleForm::Inputs::RangeInput].include?(self.class)
          result[:class] << 'form-control'
        end
        result
      end
    end
  end
end
