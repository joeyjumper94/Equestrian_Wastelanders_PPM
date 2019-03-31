if CLIENT and PPM then
	include("pony_player.lua")
	include("resources.lua")
	include("admin.lua")
	include("readme.lua")
	include("chatcommands.lua")
	include("draw_text.lua")
	include("disguise.lua")
	include("editor3_body.lua")
	include("gui_toolpanel.lua")
	include("preset.lua")
	goto END
end
PPM=PPM or {}
PPM.serverPonydata=PPM.serverPonydata or {}
PPM.isLoaded=false

include("cache.lua")
include("items.lua")
include("variables.lua")
include("pony_player.lua")
include("resources.lua")
include("preset.lua")
include("gui_toolpanel.lua")
--include("net.lua")
include("ccmark_sys.lua")
include("admin.lua")
include("readme.lua")
include("chatcommands.lua")

include("draw_text.lua")
include("disguise.lua")
if CLIENT then   
	include("render_texture.lua")
	include("render.lua")
	include("bonesystem.lua")
	include("editor3.lua")
	include("editor3_body.lua")
	include("editor3_presets.lua")
	include("presets_base.lua")
	include("gui_toolpanel.lua")
	CreateConVar("ppm_hide_weapon","0",FCVAR_REPLICATED,"hide weapons held by ponies")
	CreateConVar("ppm_enable_camerashift","1",FCVAR_REPLICATED,"Enables ViewOffset Setup")
else
	include("serverside.lua")
end
::END::
if SERVER and file.Exists("ppm/pony_hoofstep_sounds.lua","LUA") then
	SetGlobalBool("ppm/pony_hoofstep_sounds.lua",true)
end
if GetGlobalBool("ppm/pony_hoofstep_sounds.lua",false) then
	include("ppm/pony_hoofstep_sounds.lua")
end
