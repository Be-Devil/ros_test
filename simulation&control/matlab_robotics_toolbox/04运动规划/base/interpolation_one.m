%% ��ζ���ʽ��ֵ
p0 = -1;
p1 = 2;
[p,pd,pdd] = tpoly(p0, p1, 50);
figure(1)
subplot(3,1,1); plot(p); xlabel('Time'); ylabel('p-λ��');
subplot(3,1,2); plot(pd); xlabel('Time'); ylabel('pd-�ٶ�');
subplot(3,1,3); plot(pdd); xlabel('Time'); ylabel('pdd-���ٶ�');
%% �ֶβ�ֵ
[p,pd,pdd] = lspb(p0, p1, 50);
figure(2)
subplot(3,1,1); plot(p); xlabel('Time'); ylabel('p-λ��');
subplot(3,1,2); plot(pd); xlabel('Time'); ylabel('pd-�ٶ�');
subplot(3,1,3); plot(pdd); xlabel('Time'); ylabel('pdd-���ٶ�');