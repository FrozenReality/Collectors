DAY_LENGTH = 10;
NIGHT_LENGTH = 2;

function StartDay()

    timer.Simple(DAY_LENGTH, EndDay);
end

function EndDay()
    for k, ply in pairs(player.GetAll()) do
        ply:Kill();
    end
    timer.Simple(NIGHT_LENGTH, StartDay);
end

StartDay();