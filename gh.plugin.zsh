# -*- mode: sh; eval: (sh-set-shell "zsh") -*-
#
# @name gh
# @brief Zsh plugin to update completions for 'gh' command.
# @repository https://github.com/johnstonskj/zsh-gh-plugin
# @version 0.1.0,
# @license MIT AND Apache-2.0
#

############################################################################
# @section Lifecycle
# @description Plugin lifecycle functions.
#

#
# @description Generate a completion function for the command 'gh'.
#
# @noargs
#
gh_plugin_init() {
    builtin emulate -L zsh

    @completion_generate_local_file gh "$(@zplugins_plugin_dir gh)" gh completion --shell zsh
}

@zplugins_declare_plugin_dependencies completion
