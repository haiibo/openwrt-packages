module("luci.controller.msd_lite", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/msd_lite") then
		return
	end

	local page = entry({"admin", "services", "msd_lite"}, cbi("msd_lite"), _("msd_lite"))
	page.dependent = true

	entry({"admin", "services", "msd_lite", "status"}, call("status")).leaf = true
end

function status()
	local e = {}
	e.running = luci.sys.call("pgrep msd_lite >/dev/null") == 0
	luci.http.prepare_content("application/json")
	luci.http.write_json(e)
end

