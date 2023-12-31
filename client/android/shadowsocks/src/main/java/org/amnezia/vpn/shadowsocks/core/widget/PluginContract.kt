/*******************************************************************************
 *                                                                             *
 *  Copyright (C) 2017 by Max Lv <max.c.lv@gmail.com>                          *
 *  Copyright (C) 2017 by Mygod Studio <contact-shadowsocks-android@mygod.be>  *
 *                                                                             *
 *  This program is free software: you can redistribute it and/or modify       *
 *  it under the terms of the GNU General Public License as published by       *
 *  the Free Software Foundation, either version 3 of the License, or          *
 *  (at your option) any later version.                                        *
 *                                                                             *
 *  This program is distributed in the hope that it will be useful,            *
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of             *
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the              *
 *  GNU General Public License for more details.                               *
 *                                                                             *
 *  You should have received a copy of the GNU General Public License          *
 *  along with this program. If not, see <http://www.gnu.org/licenses/>.       *
 *                                                                             *
 *******************************************************************************/

package org.amnezia.vpn.shadowsocks.plugin

/**
 * The contract between the plugin provider and host. Contains definitions for the supported actions, extras, etc.
 *
 * This class is written in Java to keep Java interoperability.
 */
object PluginContract {
    /**
     * ContentProvider Action: Used for NativePluginProvider.
     *
     * Constant Value: "org.amnezia.vpn.shadowsocks.plugin.ACTION_NATIVE_PLUGIN"
     */
    const val ACTION_NATIVE_PLUGIN = "org.amnezia.vpn.shadowsocks.plugin.ACTION_NATIVE_PLUGIN"

    /**
     * Activity Action: Used for ConfigurationActivity.
     *
     * Constant Value: "org.amnezia.vpn.shadowsocks.plugin.ACTION_CONFIGURE"
     */
    const val ACTION_CONFIGURE = "org.amnezia.vpn.shadowsocks.plugin.ACTION_CONFIGURE"
    /**
     * Activity Action: Used for HelpActivity or HelpCallback.
     *
     * Constant Value: "org.amnezia.vpn.shadowsocks.plugin.ACTION_HELP"
     */
    const val ACTION_HELP = "org.amnezia.vpn.shadowsocks.plugin.ACTION_HELP"

    /**
     * The lookup key for a string that provides the plugin entry binary.
     *
     * Example: "/data/data/org.amnezia.vpn.shadowsocks.plugin.obfs_local/lib/libobfs-local.so"
     *
     * Constant Value: "org.amnezia.vpn.shadowsocks.plugin.EXTRA_ENTRY"
     */
    const val EXTRA_ENTRY = "org.amnezia.vpn.shadowsocks.plugin.EXTRA_ENTRY"
    /**
     * The lookup key for a string that provides the options as a string.
     *
     * Example: "obfs=http;obfs-host=www.baidu.com"
     *
     * Constant Value: "org.amnezia.vpn.shadowsocks.plugin.EXTRA_OPTIONS"
     */
    const val EXTRA_OPTIONS = "org.amnezia.vpn.shadowsocks.plugin.EXTRA_OPTIONS"
    /**
     * The lookup key for a CharSequence that provides user relevant help message.
     *
     * Example: "obfs=<http></http>|tls>            Enable obfuscating: HTTP or TLS (Experimental).
     * obfs-host=<host_name>      Hostname for obfuscating (Experimental)."
     *
     * Constant Value: "org.amnezia.vpn.shadowsocks.plugin.EXTRA_HELP_MESSAGE"
    </host_name> */
    const val EXTRA_HELP_MESSAGE = "org.amnezia.vpn.shadowsocks.plugin.EXTRA_HELP_MESSAGE"

    /**
     * The metadata key to retrieve plugin id. Required for plugins.
     *
     * Constant Value: "org.amnezia.vpn.shadowsocks.plugin.id"
     */
    const val METADATA_KEY_ID = "org.amnezia.vpn.shadowsocks.plugin.id"
    /**
     * The metadata key to retrieve default configuration. Default value is empty.
     *
     * Constant Value: "org.amnezia.vpn.shadowsocks.plugin.default_config"
     */
    const val METADATA_KEY_DEFAULT_CONFIG = "org.amnezia.vpn.shadowsocks.plugin.default_config"

    const val METHOD_GET_EXECUTABLE = "shadowsocks:getExecutable"

    /** ConfigurationActivity result: fallback to manual edit mode.  */
    const val RESULT_FALLBACK = 1

    /**
     * Relative to the file to be copied. This column is required.
     *
     * Example: "kcptun", "doc/help.txt"
     *
     * Type: String
     */
    const val COLUMN_PATH = "path"
    /**
     * File mode bits. Default value is "644".
     *
     * Example: "755"
     *
     * Type: String
     */
    const val COLUMN_MODE = "mode"

    /**
     * The scheme for general plugin actions.
     */
    const val SCHEME = "plugin"
    /**
     * The authority for general plugin actions.
     */
    const val AUTHORITY = "org.amnezia.vpn.shadowsocks"
}
