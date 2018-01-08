util.AddNetworkString('SetDarkRPMoney')

net.Receive('SetDarkRPMoney', function(len, ply)
    local moneyToSet = net.ReadInt(32)
    ply:setMoney(500)
    print('Money has been set to '..moneyToSet..' for '..ply:Nick())
end)