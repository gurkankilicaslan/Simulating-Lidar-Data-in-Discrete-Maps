
clc; clear all; close all;
load("Data.mat")

fh = figure();
fh.WindowState = 'maximized';

subplot(11,10,[1:100])
xdivide = linspace(-5.00001,5.00001,101);
ydivide = linspace(-5.00001,5.00001,101);
map = ones(100,100);

 
for i = 1:length(index)
   x = find(map_x(i) >= xdivide,1, 'last'); 
   y = find(map_y(i) >= ydivide,1,'last');
   map(x,y) = 0;
end
map = rot90(map);
imshow(map)
hold on
for i = 1:100
    line([0.5,100.5], [0 + i+0.5,0 + i+0.5],"Color","k","Linewidth",0.5)
    hold on
    line([0 + i+0.5,0 + i+0.5],[0.5,100.5],"Color","k","Linewidth",0.5)
    hold on
end
title("Binary Image of Binary Matrix(map)")

robotposition1 = [30,20]; %You can change the robot position
robotposition2 = [50,50]; %You can change the robot position
robotposition3 = [75,75]; %You can change the robot position
robotposition4 = [80,25]; %You can change the robot position


lidardata(robotposition1,map);
lidardata(robotposition2,map);
lidardata(robotposition3,map);
lidardata(robotposition4,map);


function lidardata(robotposition,map)

trans = map';
scatter(robotposition(1),robotposition(2),30,"r",'filled','s','MarkerFaceAlpha',.5)
if trans(robotposition(1),robotposition(2)) == 1
for i=1:10
    if trans(robotposition(1)+i,robotposition(2)) == 1
        scatter(robotposition(1)+i,robotposition(2),30,"b",'filled','s','MarkerFaceAlpha',.5)
    else
        break
    end
    
end
for i=1:10
    if trans(robotposition(1)-i,robotposition(2)) == 1
        scatter(robotposition(1)-i,robotposition(2),30,"b",'filled','s','MarkerFaceAlpha',.5)
    else
        break
    end
end
end

if trans(robotposition(1),robotposition(2)) == 1
for i=1:9
    if trans(robotposition(1),robotposition(2)+1) == 1
        scatter(robotposition(1),robotposition(2)+1,30,"b",'filled','s','MarkerFaceAlpha',.5)
        if trans(robotposition(1)+i,robotposition(2)+1) == 1
            scatter(robotposition(1)+i,robotposition(2)+1,30,"b",'filled','s','MarkerFaceAlpha',.5)
        else
            break
        end
    end
end

for i=1:9
    if trans(robotposition(1)-i,robotposition(2)+1) == 1
        scatter(robotposition(1)-i,robotposition(2)+1,30,"b",'filled','s','MarkerFaceAlpha',.5)
    else
        break
    end
end
end


if trans(robotposition(1),robotposition(2)) == 1
for i=1:9
    if trans(robotposition(1),robotposition(2)-1) == 1
        scatter(robotposition(1),robotposition(2)-1,30,"b",'filled','s','MarkerFaceAlpha',.5)
        if trans(robotposition(1)+i,robotposition(2)-1) == 1
            scatter(robotposition(1)+i,robotposition(2)-1,30,"b",'filled','s','MarkerFaceAlpha',.5)
        else
            break
        end
    end
end

for i=1:9
    if trans(robotposition(1)-i,robotposition(2)-1) == 1
        scatter(robotposition(1)-i,robotposition(2)-1,30,"b",'filled','s','MarkerFaceAlpha',.5)
    else
        break
    end
end
end


if trans(robotposition(1),robotposition(2))==1 && trans(robotposition(1),robotposition(2)+1)==1
    for i=1:9
        if trans(robotposition(1),robotposition(2)+2) == 1
            scatter(robotposition(1),robotposition(2)+2,30,"b",'filled','s','MarkerFaceAlpha',.5)
            if trans(robotposition(1)+i,robotposition(2)+2) == 1
                scatter(robotposition(1)+i,robotposition(2)+2,30,"b",'filled','s','MarkerFaceAlpha',.5)
            else
                break
            end
        end
    end

    for i=1:9
        if trans(robotposition(1)-i,robotposition(2)+2) == 1
            scatter(robotposition(1)-i,robotposition(2)+2,30,"b",'filled','s','MarkerFaceAlpha',.5)
        else
            break
        end
    end
end


if trans(robotposition(1),robotposition(2))==1 && trans(robotposition(1),robotposition(2)-1)==1
    for i=1:9
        if trans(robotposition(1),robotposition(2)-2) == 1
            scatter(robotposition(1),robotposition(2)-2,30,"b",'filled','s','MarkerFaceAlpha',.5)
            if trans(robotposition(1)+i,robotposition(2)-2) == 1
                scatter(robotposition(1)+i,robotposition(2)-2,30,"b",'filled','s','MarkerFaceAlpha',.5)
            else
                break
            end
        end
    end

    for i=1:9
        if trans(robotposition(1)-i,robotposition(2)-2) == 1
            scatter(robotposition(1)-i,robotposition(2)-2,30,"b",'filled','s','MarkerFaceAlpha',.5)
        else
            break
        end
    end
end


if trans(robotposition(1),robotposition(2))==1 && trans(robotposition(1),robotposition(2)+1)==1 && trans(robotposition(1),robotposition(2)+2)==1
    for i=1:9
        if trans(robotposition(1),robotposition(2)+3) == 1
            scatter(robotposition(1),robotposition(2)+3,30,"b",'filled','s','MarkerFaceAlpha',.5)
            if trans(robotposition(1)+i,robotposition(2)+3) == 1
                scatter(robotposition(1)+i,robotposition(2)+3,30,"b",'filled','s','MarkerFaceAlpha',.5)
            else
                break
            end
        end
    end

    for i=1:9
        if trans(robotposition(1)-i,robotposition(2)+3) == 1
            scatter(robotposition(1)-i,robotposition(2)+3,30,"b",'filled','s','MarkerFaceAlpha',.5)
        else
            break
        end
    end
end


if trans(robotposition(1),robotposition(2))==1 && trans(robotposition(1),robotposition(2)-1)==1 && trans(robotposition(1),robotposition(2)-2)==1
    for i=1:9
        if trans(robotposition(1),robotposition(2)-3) == 1
            scatter(robotposition(1),robotposition(2)-3,30,"b",'filled','s','MarkerFaceAlpha',.5)
            if trans(robotposition(1)+i,robotposition(2)-3) == 1
                scatter(robotposition(1)+i,robotposition(2)-3,30,"b",'filled','s','MarkerFaceAlpha',.5)
            else
                break
            end
        end
    end

    for i=1:9
        if trans(robotposition(1)-i,robotposition(2)-3) == 1
            scatter(robotposition(1)-i,robotposition(2)-3,30,"b",'filled','s','MarkerFaceAlpha',.5)
        else
            break
        end
    end
end


if trans(robotposition(1),robotposition(2))==1 && trans(robotposition(1),robotposition(2)+1)==1 && trans(robotposition(1),robotposition(2)+2)==1 && trans(robotposition(1),robotposition(2)+3)==1
    for i=1:9
        if trans(robotposition(1),robotposition(2)+4) == 1
            scatter(robotposition(1),robotposition(2)+4,30,"b",'filled','s','MarkerFaceAlpha',.5)
            if trans(robotposition(1)+i,robotposition(2)+4) == 1
                scatter(robotposition(1)+i,robotposition(2)+4,30,"b",'filled','s','MarkerFaceAlpha',.5)
            else
                break
            end
        end
    end

    for i=1:9
        if trans(robotposition(1)-i,robotposition(2)+4) == 1
            scatter(robotposition(1)-i,robotposition(2)+4,30,"b",'filled','s','MarkerFaceAlpha',.5)
        else
            break
        end
    end
end

if trans(robotposition(1),robotposition(2))==1 && trans(robotposition(1),robotposition(2)-1)==1 && trans(robotposition(1),robotposition(2)-2)==1 && trans(robotposition(1),robotposition(2)-3)==1
    for i=1:9
        if trans(robotposition(1),robotposition(2)-4) == 1
            scatter(robotposition(1),robotposition(2)-4,30,"b",'filled','s','MarkerFaceAlpha',.5)
            if trans(robotposition(1)+i,robotposition(2)-4) == 1
                scatter(robotposition(1)+i,robotposition(2)-4,30,"b",'filled','s','MarkerFaceAlpha',.5)
            else
                break
            end
        end
    end

    for i=1:9
        if trans(robotposition(1)-i,robotposition(2)-4) == 1
            scatter(robotposition(1)-i,robotposition(2)-4,30,"b",'filled','s','MarkerFaceAlpha',.5)
        else
            break
        end
    end
end


if trans(robotposition(1),robotposition(2))==1 && trans(robotposition(1),robotposition(2)+1)==1 && trans(robotposition(1),robotposition(2)+2)==1 && trans(robotposition(1),robotposition(2)+3)==1 && trans(robotposition(1),robotposition(2)+4)==1
    for i=1:8
        if trans(robotposition(1),robotposition(2)+5) == 1
            scatter(robotposition(1),robotposition(2)+5,30,"b",'filled','s','MarkerFaceAlpha',.5)
            if trans(robotposition(1)+i,robotposition(2)+5) == 1
                scatter(robotposition(1)+i,robotposition(2)+5,30,"b",'filled','s','MarkerFaceAlpha',.5)
            else
                break
            end
        end
    end

    for i=1:8
        if trans(robotposition(1)-i,robotposition(2)+5) == 1
            scatter(robotposition(1)-i,robotposition(2)+5,30,"b",'filled','s','MarkerFaceAlpha',.5)
        else
            break
        end
    end
end

if trans(robotposition(1),robotposition(2))==1 && trans(robotposition(1),robotposition(2)-1)==1 && trans(robotposition(1),robotposition(2)-2)==1 && trans(robotposition(1),robotposition(2)-3)==1 && trans(robotposition(1),robotposition(2)-4)==1
    for i=1:8
        if trans(robotposition(1),robotposition(2)-5) == 1
            scatter(robotposition(1),robotposition(2)-5,30,"b",'filled','s','MarkerFaceAlpha',.5)
            if trans(robotposition(1)+i,robotposition(2)-5) == 1
                scatter(robotposition(1)+i,robotposition(2)-5,30,"b",'filled','s','MarkerFaceAlpha',.5)
            else
                break
            end
        end
    end

    for i=1:8
        if trans(robotposition(1)-i,robotposition(2)-5) == 1
            scatter(robotposition(1)-i,robotposition(2)-5,30,"b",'filled','s','MarkerFaceAlpha',.5)
        else
            break
        end
    end
end


if trans(robotposition(1),robotposition(2))==1 && trans(robotposition(1),robotposition(2)+1)==1 && trans(robotposition(1),robotposition(2)+2)==1 && trans(robotposition(1),robotposition(2)+3)==1 && trans(robotposition(1),robotposition(2)+4)==1 && trans(robotposition(1),robotposition(2)+5)==1 
    for i=1:8
        if trans(robotposition(1),robotposition(2)+6) == 1
            scatter(robotposition(1),robotposition(2)+6,30,"b",'filled','s','MarkerFaceAlpha',.5)
            if trans(robotposition(1)+i,robotposition(2)+6) == 1
                scatter(robotposition(1)+i,robotposition(2)+6,30,"b",'filled','s','MarkerFaceAlpha',.5)
            else
                break
            end
        end
    end

    for i=1:8
        if trans(robotposition(1)-i,robotposition(2)+6) == 1
            scatter(robotposition(1)-i,robotposition(2)+6,30,"b",'filled','s','MarkerFaceAlpha',.5)
        else
            break
        end
    end
end

if trans(robotposition(1),robotposition(2))==1 && trans(robotposition(1),robotposition(2)-1)==1 && trans(robotposition(1),robotposition(2)-2)==1 && trans(robotposition(1),robotposition(2)-3)==1 && trans(robotposition(1),robotposition(2)-4)==1 && trans(robotposition(1),robotposition(2)-5)==1
    for i=1:8
        if trans(robotposition(1),robotposition(2)-6) == 1
            scatter(robotposition(1),robotposition(2)-6,30,"b",'filled','s','MarkerFaceAlpha',.5)
            if trans(robotposition(1)+i,robotposition(2)-6) == 1
                scatter(robotposition(1)+i,robotposition(2)-6,30,"b",'filled','s','MarkerFaceAlpha',.5)
            else
                break
            end
        end
    end

    for i=1:8
        if trans(robotposition(1)-i,robotposition(2)-6) == 1
            scatter(robotposition(1)-i,robotposition(2)-6,30,"b",'filled','s','MarkerFaceAlpha',.5)
        else
            break
        end
    end
end


if trans(robotposition(1),robotposition(2))==1 && trans(robotposition(1),robotposition(2)+1)==1 && trans(robotposition(1),robotposition(2)+2)==1 && trans(robotposition(1),robotposition(2)+3)==1 && trans(robotposition(1),robotposition(2)+4)==1 && trans(robotposition(1),robotposition(2)+5)==1 && trans(robotposition(1),robotposition(2)+6)==1 
    for i=1:7
        if trans(robotposition(1),robotposition(2)+7) == 1
            scatter(robotposition(1),robotposition(2)+7,30,"b",'filled','s','MarkerFaceAlpha',.5)
            if trans(robotposition(1)+i,robotposition(2)+7) == 1
                scatter(robotposition(1)+i,robotposition(2)+7,30,"b",'filled','s','MarkerFaceAlpha',.5)
            else
                break
            end
        end
    end

    for i=1:7
        if trans(robotposition(1)-i,robotposition(2)+7) == 1
            scatter(robotposition(1)-i,robotposition(2)+7,30,"b",'filled','s','MarkerFaceAlpha',.5)
        else
            break
        end
    end
end

if trans(robotposition(1),robotposition(2))==1 && trans(robotposition(1),robotposition(2)-1)==1 && trans(robotposition(1),robotposition(2)-2)==1 && trans(robotposition(1),robotposition(2)-3)==1 && trans(robotposition(1),robotposition(2)-4)==1 && trans(robotposition(1),robotposition(2)-5)==1 && trans(robotposition(1),robotposition(2)-6)==1
    for i=1:7
        if trans(robotposition(1),robotposition(2)-7) == 1
            scatter(robotposition(1),robotposition(2)-7,30,"b",'filled','s','MarkerFaceAlpha',.5)
            if trans(robotposition(1)+i,robotposition(2)-7) == 1
                scatter(robotposition(1)+i,robotposition(2)-7,30,"b",'filled','s','MarkerFaceAlpha',.5)
            else
                break
            end
        end
    end

    for i=1:7
        if trans(robotposition(1)-i,robotposition(2)-7) == 1
            scatter(robotposition(1)-i,robotposition(2)-7,30,"b",'filled','s','MarkerFaceAlpha',.5)
        else
            break
        end
    end
end


if trans(robotposition(1),robotposition(2))==1 && trans(robotposition(1),robotposition(2)+1)==1 && trans(robotposition(1),robotposition(2)+2)==1 && trans(robotposition(1),robotposition(2)+3)==1 && trans(robotposition(1),robotposition(2)+4)==1 && trans(robotposition(1),robotposition(2)+5)==1 && trans(robotposition(1),robotposition(2)+6)==1 && trans(robotposition(1),robotposition(2)+7)==1 
    for i=1:6
        if trans(robotposition(1),robotposition(2)+8) == 1
            scatter(robotposition(1),robotposition(2)+8,30,"b",'filled','s','MarkerFaceAlpha',.5)
            if trans(robotposition(1)+i,robotposition(2)+8) == 1
                scatter(robotposition(1)+i,robotposition(2)+8,30,"b",'filled','s','MarkerFaceAlpha',.5)
            else
                break
            end
        end
    end

    for i=1:6
        if trans(robotposition(1)-i,robotposition(2)+8) == 1
            scatter(robotposition(1)-i,robotposition(2)+8,30,"b",'filled','s','MarkerFaceAlpha',.5)
        else
            break
        end
    end
end

if trans(robotposition(1),robotposition(2))==1 && trans(robotposition(1),robotposition(2)-1)==1 && trans(robotposition(1),robotposition(2)-2)==1 && trans(robotposition(1),robotposition(2)-3)==1 && trans(robotposition(1),robotposition(2)-4)==1 && trans(robotposition(1),robotposition(2)-5)==1 && trans(robotposition(1),robotposition(2)-6)==1 && trans(robotposition(1),robotposition(2)-7)==1 
    for i=1:6
        if trans(robotposition(1),robotposition(2)-8) == 1
            scatter(robotposition(1),robotposition(2)-8,30,"b",'filled','s','MarkerFaceAlpha',.5)
            if trans(robotposition(1)+i,robotposition(2)-8) == 1
                scatter(robotposition(1)+i,robotposition(2)-8,30,"b",'filled','s','MarkerFaceAlpha',.5)
            else
                break
            end
        end
    end

    for i=1:6
        if trans(robotposition(1)-i,robotposition(2)-8) == 1
            scatter(robotposition(1)-i,robotposition(2)-8,30,"b",'filled','s','MarkerFaceAlpha',.5)
        else
            break
        end
    end
end

if trans(robotposition(1),robotposition(2))==1 && trans(robotposition(1),robotposition(2)+1)==1 && trans(robotposition(1),robotposition(2)+2)==1 && trans(robotposition(1),robotposition(2)+3)==1 && trans(robotposition(1),robotposition(2)+4)==1 && trans(robotposition(1),robotposition(2)+5)==1 && trans(robotposition(1),robotposition(2)+6)==1 && trans(robotposition(1),robotposition(2)+7)==1 && trans(robotposition(1),robotposition(2)+8)==1  
    for i=1:4
        if trans(robotposition(1),robotposition(2)+9) == 1
            scatter(robotposition(1),robotposition(2)+9,30,"b",'filled','s','MarkerFaceAlpha',.5)
            if trans(robotposition(1)+i,robotposition(2)+9) == 1
                scatter(robotposition(1)+i,robotposition(2)+9,30,"b",'filled','s','MarkerFaceAlpha',.5)
            else
                break
            end
        end
    end

    for i=1:4
        if trans(robotposition(1)-i,robotposition(2)+9) == 1
            scatter(robotposition(1)-i,robotposition(2)+9,30,"b",'filled','s','MarkerFaceAlpha',.5)
        else
            break
        end
    end
end

if trans(robotposition(1),robotposition(2))==1 && trans(robotposition(1),robotposition(2)-1)==1 && trans(robotposition(1),robotposition(2)-2)==1 && trans(robotposition(1),robotposition(2)-3)==1 && trans(robotposition(1),robotposition(2)-4)==1 && trans(robotposition(1),robotposition(2)-5)==1 && trans(robotposition(1),robotposition(2)-6)==1 && trans(robotposition(1),robotposition(2)-7)==1 && trans(robotposition(1),robotposition(2)-8)==1 
    for i=1:4
        if trans(robotposition(1),robotposition(2)-9) == 1
            scatter(robotposition(1),robotposition(2)-9,30,"b",'filled','s','MarkerFaceAlpha',.5)
            if trans(robotposition(1)+i,robotposition(2)-9) == 1
                scatter(robotposition(1)+i,robotposition(2)-9,30,"b",'filled','s','MarkerFaceAlpha',.5)
            else
                break
            end
        end
    end

    for i=1:4
        if trans(robotposition(1)-i,robotposition(2)-9) == 1
            scatter(robotposition(1)-i,robotposition(2)-9,30,"b",'filled','s','MarkerFaceAlpha',.5)
        else
            break
        end
    end
end


if trans(robotposition(1),robotposition(2))==1 && trans(robotposition(1),robotposition(2)+1)==1 && trans(robotposition(1),robotposition(2)+2)==1 && trans(robotposition(1),robotposition(2)+3)==1 && trans(robotposition(1),robotposition(2)+4)==1 && trans(robotposition(1),robotposition(2)+5)==1 && trans(robotposition(1),robotposition(2)+6)==1 && trans(robotposition(1),robotposition(2)+7)==1 && trans(robotposition(1),robotposition(2)+8)==1 &&  trans(robotposition(1),robotposition(2)+9)==1 && trans(robotposition(1),robotposition(2)+10)==1
    scatter(robotposition(1),robotposition(2)+10,30,"b",'filled','s','MarkerFaceAlpha',.5)
end

if trans(robotposition(1),robotposition(2))==1 && trans(robotposition(1),robotposition(2)-1)==1 && trans(robotposition(1),robotposition(2)-2)==1 && trans(robotposition(1),robotposition(2)-3)==1 && trans(robotposition(1),robotposition(2)-4)==1 && trans(robotposition(1),robotposition(2)-5)==1 && trans(robotposition(1),robotposition(2)-6)==1 && trans(robotposition(1),robotposition(2)-7)==1 && trans(robotposition(1),robotposition(2)-8)==1 &&  trans(robotposition(1),robotposition(2)-9)==1 && trans(robotposition(1),robotposition(2)-10)==1
    scatter(robotposition(1),robotposition(2)-10,30,"b",'filled','s','MarkerFaceAlpha',.5)
end

end
