# -*- mode: sh; eval: (sh-set-shell "zsh") -*-
#
# @name gh
# @brief Zsh plugin to do something...
# @repository https://github.com/johnstonskj/zsh-gh-plugin
# @homepage **include if different from repository URL**
# @version **use semantic versioning, e.g. 0.1.0, or remove**
# @license **use license expressions, e.g., MIT AND Apache-2.0, or remove**
# @copyright **copyright notice in lieu of license, e.g., ©️ YEAR FULL_NAME <EMAIL>, or remove**
#
# @description
#
# Long description TBD.
#
# ### State Variables
#
# * **PLUGIN**: Plugin-defined global associative array with the following keys:
#   * **_NAME**: The name of this plugin.
#   * **_PATH**: The complete file path to the plugin's file.
#   * **_CONTEXT**: The plugin's state context.
#
# ### Public Variables
#
# * **GH_EXAMPLE**: if set it does something magical.
#

############################################################################
# @section Setup
# @description Standard path and variable setup.
#

typeset -A PLUGIN
PLUGIN[_PATH]="$(@zplugins_normalize_zero "$0")"
PLUGIN[_NAME]="${${PLUGIN[_PATH]:t}%%.*}"
PLUGIN[_CONTEXT]="$(@zplugins_plugin_context ${PLUGIN[_NAME]})"

############################################################################
# @section Lifecycle
# @description Plugin lifecycle functions.
#

#
# @description
#
# TBD.
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
