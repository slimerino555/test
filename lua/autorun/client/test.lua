hook.Add('OnPlayerChat', 'ShowPermaWeaponMenu', function(ply, strText, plyTeam, plyDead)
    strText = string.lower(strText)

    if (strText == '!dev') then
        local Frame = vgui.Create("DFrame")
        Frame:SetTitle("Maple Weapons")
        Frame:SetSize(1000, 700)
        Frame:Center()
        Frame:MakePopup()

        Frame.Paint = function(self, w, h)
            draw.RoundedBox(0, 0, 0, w, h, Color(133, 150, 197, 200))

            Button.DoClick = function()
                Frame:Close()
            end

            local DermaButton = vgui.Create("DButton", Frame)
            DermaButton:SetText("Say hi")
            DermaButton:SetPos(100, 120)
            DermaButton:SetSize(180, 150)

            DermaButton.DoClick = function()
                RunConsoleCommand("say", "Fuck")

                Button.Paint = function(self, w, h)
                    draw.RoundedBox(0, 0, 0, w, h, Color(137, 172, 230, 250))
                    local TextEntry = vgui.Create("DTextEntry", Frame) -- create the form as a child of frame
                    TextEntry:SetPos(100, 300)
                    TextEntry:SetSize(180, 30)
                    TextEntry.AllowInput = function(self, stringValue) return true end
                 
                    local Button = vgui.Create("DButton", Frame)
                    Button:SetText("Fucking Work")
                    Button:SetTextColor(Color(255, 255, 255))
                    Button:SetPos(300, 120)
                    Button:SetSize(180, 150)

                    Button.Paint = function(self, w, h)
                        draw.RoundedBox(0, 0, 0, w, h, Color(137, 172, 230, 250))
                        local TextEntry = vgui.Create("DTextEntry", Frame) -- create the form as a child of frame
                        TextEntry:SetPos(300, 300)
                        TextEntry:SetSize(180, 30)
                        TextEntry.AllowInput = function(self, stringValue) return true end
                    end
                end
            end
        end
    end
end)