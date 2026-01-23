# -*- mode: sh; eval: (sh-set-shell "zsh") -*-
#
# @name gh
# @brief Zsh plugin to update completions for 'gh' command.
# @repository https://github.com/johnstonskj/zsh-gh-plugin
# @version 0.1.0,
# @license MIT AND Apache-2.0
#
#
# ### State Variables
#
# * **PLUGIN**: Plugin-defined global associative array with the following keys:
#   * **_NAME**: The name of this plugin.
#   * **_PATH**: The complete file path to the plugin's file.
#

############################################################################
# @section Setup
# @description Standard path and variable setup.
#

typeset -A PLUGIN
PLUGIN[_PATH]="$(@zplugins_normalize_zero "$0")"
PLUGIN[_NAME]="${${PLUGIN[_PATH]:t}%%.*}"

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
    builtin setopt extended_glob warn_create_global typeset_silent no_short_loops rc_quotes no_auto_pushd

    @completion_generate_local_file "${PLUGIN[_NAME]}" "${PLUGIN[_PATH]}" gh completion --shell zsh
}

gh_plugin_unload() {
    builtin emulate -L zsh

    unset PLUGIN
}
