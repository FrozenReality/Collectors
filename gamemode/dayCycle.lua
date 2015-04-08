DAY_LENGTH = 10;
FADE_LENGTH = 2;
NIGHT_LENGTH = 2;

playersInSafeZone = {};
hasTimerStarted = false;

function StartDay()
    timer.Simple(DAY_LENGTH, EndDay);
    timer.Simple(DAY_LENGTH - FADE_LENGTH, FadePlayerScreens);
end

function FadePlayerScreens()
    for k, ply in pairs(player.GetAll()) do
        ply:ScreenFade(2, color_black, FADE_LENGTH, NIGHT_LENGTH);
    end
end

function EndDay()
    KillPeople();

    timer.Simple(NIGHT_LENGTH, StartDay);
end

function KillPeople()
    local safeZones = ents.FindByClass("co_safe_zone")
    for k, ply in pairs(player.GetAll()) do
        if playersInSafeZone[ply:SteamID()] == nil then
            ply:Kill();
        end
    end
end

if not hasTimerStarted then
    hasTimerStarted = true;
    StartDay();
end
