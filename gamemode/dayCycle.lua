DAY_LENGTH = 10;
FADE_LENGTH = 2;
NIGHT_LENGTH = 2;

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
    for k, ply in pairs(player.GetAll()) do
        ply:Kill();
    end
    timer.Simple(NIGHT_LENGTH, StartDay);
end

StartDay();