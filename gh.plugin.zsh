# -*- mode: sh; eval: (sh-set-shell "zsh") -*-
#
# @name :gh
# @brief: Update completions for the 'gh' command.
# @repository: https://github.com/johnstonskj/zsh-gh-plugin
# @version: 0.1.0,
# @license: MIT AND Apache-2.0
#

############################################################################
# @section Setup
# @description Standard path and variable setup.
#

GH_PLUGIN_PATH="$(@zplugins_normalize_zero "$0")"

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

    @completion_generate_local_file gh "${GH_PLUGIN_PATH}" gh completion --shell zsh
}

@zplugins_declare_plugin_dependencies completion
