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

@zplugins_declare_plugin_dependencies completion

#
# @description Generate a completion function for the command 'gh'.
#
# @noargs
#
gh_plugin_init() {
    builtin emulate -L zsh

    @completion_generate_local_file_from gh completion --shell zsh
}

#
# @description
#
# Called when the plugin is unloaded to clean up after itself.
#
# @noargs
#
gh_plugin_unload() {
    builtin emulate -L zsh

    unset GH_PLUGIN_PATH
}
