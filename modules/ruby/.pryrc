if defined?(PryByebug)
  Pry.commands.alias_command "s", "step"
  Pry.commands.alias_command "n", "next"
  Pry.commands.alias_command "f", "finish"
  Pry.commands.alias_command "c", "continue"
  Pry.commands.alias_command "e", "exit"
  Pry.config.editor="vim"
end

require "awesome_print"
AwesomePrint.pry!
# もし挙動がおかしければ上記消せばOK
# https://github.com/awesome-print/awesome_print
#
# gem "pry-rails" , gem "awesome_print" ,gem "pry-byebug" が必要
