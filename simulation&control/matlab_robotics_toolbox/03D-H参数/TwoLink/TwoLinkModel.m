classdef TwoLinkModel <handle
    %MATHSCARA �˴���ʾ�йش����ժҪ
    %   �˴���ʾ��ϸ˵��
    
    properties
        robot
        interpolation=0
    end
    
    methods
       function obj=TwoLinkModel()
            
        end
        function init(obj)
            Links(1) = Link( 'a', 1, 'alpha', 0,'d', 0);
            Links(1).offset=1.57; %ͨ��Offsetָ����ֵ
            Links(2) = Link( 'a', 1, 'alpha', 0,'d',0);
            obj.robot=SerialLink(Links,'name','robot');
            qinit=[0 0];
            obj.robot.plot(qinit,'workspace',[-2 2 -2 2 -0.5 1],'trail','k','fps',...
            20,'tile1color',[0.6 0.7 0.835],'view',[122 41]);
        end
         function MoveJ(obj,qangle)
             % һ���Դ���������⣬���ָ�����ϲ������� 'trail'�Ĳ��� opt.LineWidth=1;
             pos=obj.robot.getpos(); %Ҫ��ʹ��getpos������plot��һ��
             qangles=qangle;
             if(obj.interpolation==1)
                 qangles=mtraj(@tpoly,pos,qangle,50);
             elseif(obj.interpolation==2)
                 qangles=mtraj(@lspb,pos,qangle,50);
             end
              obj.robot.plot(qangles,'workspace',[-1 1 -1 1 -0.5 1],'trail','k','fps',...
            20,'tile1color',[0.6 0.7 0.835]);
             % fps ���Ե��������ٶ�
         end
    end
    
end

