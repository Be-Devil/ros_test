function  plot3xyzf(u)
%PLOT3XYZF �˴���ʾ�йش˺�����ժҪ
X=u(:,1); %ȡ��һ������
Y=u(:,2);
Z=u(:,3);
plot3(X,Y,Z,'o');
xlabel('x��')
ylabel('y��')
zlabel('z��')
title('ĩ�˹켣������')


end

