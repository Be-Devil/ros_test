%% λ�˲�ֵ
% ����ƽ�Ʋ���ʹ�����Բ�ֵ����ת����ʹ����Ԫ����ֵ�� interp�������β�ֵ��
T0=transl(0.4,0.2,0)*trotx(pi);
T1=transl(-0.4,-0.2,0.3)*troty(pi/2)*trotz(-pi/2);
Ts=trinterp(T0,T1,[0:49]/49);
tranimate(Ts)