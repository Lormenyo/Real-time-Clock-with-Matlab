%   Alarm Clock
pick=menu('Do you an to set an alarm?','Yes','No');
if pick == 1
    prompt = {'Hour:','Minutes:'};
    title = 'Alarm Settings';
    dims = [1 6; 1 9]; 
    answer = inputdlg(prompt,title,dims);
end

alhour = str2num(answer{1});
alminutes = str2num(answer{2});

%Alarm ringer sound
[alarm,F] = audioread('alarmtone.wav');
player= audioplayer(alarm,F);

if alhour == hour && alminutes == min
    play(player)
end

choose = menu('Alarm Settings','Stop alarm');
if choose == 1
    stop(player)
end