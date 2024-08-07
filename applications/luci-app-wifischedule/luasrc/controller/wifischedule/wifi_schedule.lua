-- Copyright (c) 2016, prpl Foundation
--
-- Permission to use, copy, modify, and/or distribute this software for any purpose with or without
-- fee is hereby granted, provided that the above copyright notice and this permission notice appear
-- in all copies.
--
-- THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE
-- INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE
-- FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
-- LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,
-- ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
--
-- Author: Nils Koenig <openwrt@newk.it>

module("luci.controller.wifischedule.wifi_schedule", package.seeall)

local fs = require "nixio.fs"
local sys = require "luci.sys"
local template = require "luci.template"
local i18n = require "luci.i18n"

function index()
    if not nixio.fs.access("/etc/config/wifi_schedule") then
        return
    end

    local e = entry({"admin", "services", "wifi_schedule"}, cbi("wifischedule/wifi_schedule"), _("Wifi Schedule"), 60)
    e.acl_depends = { "luci-app-wifischedule" }
    e.dependent = false
end
