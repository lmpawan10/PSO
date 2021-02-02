function SolnPlot(sol,model)

    xs=model.xs;
    ys=model.ys;
    xt=model.xt;
    yt=model.yt;
    xobs=model.xobs;
    yobs=model.yobs;
    robs=model.robs;
    xtri=model.xtri;
    ytri=model.ytri;
    
    XS=sol.XS;
    YS=sol.YS;
    xx=sol.xx;
    yy=sol.yy;
    
    theta=linspace(0,2*pi,100);
    for k=1:numel(xobs)
        fill(xobs(k)+robs(k)*cos(theta),yobs(k)+robs(k)*sin(theta),'ro');
        hold on;
    end
    fill(xtri,ytri,'ro','LineWidth',2);
    plot(xx,yy,'k','LineWidth',2);
    plot(XS,YS,'ro');
    plot(xs,ys,'bs','MarkerSize',12,'MarkerFaceColor','b');
    plot(xt,yt,'kp','MarkerSize',16,'MarkerFaceColor','g');
    hold off;
    grid on;
    axis equal;

end