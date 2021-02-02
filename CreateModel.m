%
% Copyright (c) 2015, Yarpiz (www.yarpiz.com)
% All rights reserved. Please read the "license.txt" for license terms.
%
% Project Code: YPAP115
% Project Title: Path Planning using PSO in MATLAB
% Publisher: Yarpiz (www.yarpiz.com)
% 
% Developer: S. Mostapha Kalami Heris (Member of Yarpiz Team)
% 
% Contact Info: sm.kalami@gmail.com, info@yarpiz.com

function model=CreateModel()

    % Source
    xs=0;
    ys=2;
    
    % Target (Destination)
    xt=7;
    yt=4;
    
    xobs=[1.5 4.0 1.2 3.5]; %Center of circles (X-coordinate)
    yobs=[4.5 3.0 1.5 0.6]; %Center of circles (Y-coordinate)
    robs=[1.0 1.0 1.1 0.5]; %Radius of circles (lengths)
    xtri=[4.0 3 6];
    ytri=[5.2 4 4.2];
    
    n=3;    %Number of handle points
    
    xmin=-10;
    xmax= 10;
    
    ymin=-10;
    ymax= 10;
    
    tarea = 0;
    parea = zeros(1,100);
    
    model.xs=xs;    %Robot source x
    model.ys=ys;    %Robot source y
    model.xt=xt;    %Robot target x
    model.yt=yt;    %Robot target y
    model.xobs=xobs;    %Obstacle x position
    model.yobs=yobs;    %Obstacle y position
    model.robs=robs;    %Obstacle radius
    model.xtri=xtri;
    model.ytri=ytri;
    model.n=n;          %Model Handle points
    model.xmin=xmin;
    model.xmax=xmax;
    model.ymin=ymin;
    model.ymax=ymax;
    model.tarea = tarea;
    model.parea = parea;
    
end