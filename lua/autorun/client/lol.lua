hook.Add('OnPlayerChat', 'ShowStaffMenu', function(ply, strText, plyTeam, plyDead)
    strText = string.lower(strText)

    if (strText == '!dev') then
local info = vgui.Create("DPanel", frame)
info:Docl(TOP)
info:InvalidateParent(true)
info:SetTall(72)

info:ClearPaint()
info:Class("Background", color(60, 60, 60, 255), 6)

local cont = vgui.Create("DPanel", info)
cont:Dock(LEFT)
cont:DockMargin(8, 8, 8 ,8)
cont:InvalidateParent(true)
cont:SetWide(cont:GetTall())

cont:ClearPaint()
cont:Class("Circle", Color(0, 255, 127, 255))

local av = vgui.Create("DPanel", cont)
av:Dock(FILL)
av:DockMargin(2, 2, 2, 2)
av:Class("CircleAvatar")
av:SetPLayer(LocalPlayer(), 64)

local stats = vgui.Create("DPanel", info)
stats:Dock(FILL)

stats:ClearPaint()
stats:Class("DualText",
    "Slim Shady",
    "Slimerino",
    Color(255, 127, 0 ,255),
    "You have three notifcations",
    "Slimerino",
    Color(255, 255, 255, 255),
    TEXT_ALIGN_LEFT
)