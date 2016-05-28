%�������� ������� ����������� ��� ������� ��� �� �������� ���.

macd_msft=macd(msft);%� ���������� ����� � ����������� ��� ������ �� ���� ��� ����� %�����������

rsi_msft=rsindex(msft(:,6));

subplot(3,1,1);
plot(macd_msft);

title('� ������� MACD ��� ��� ������ ��� Microsoft , 9/24/07-9/19/08','fontweight','b');
datetick('x','mm/dd/yy'); %���'����� ����������� ���� ����� ��� x

subplot(3,1,2);
plot(rsi_msft);

title('� ������� RSI ��� ��� ������ ��� Microsoft , 9/24/07-9/19/08','fontweight','b');
datetick('x','mm/dd/yy'); %���'����� ����������� ���� ����� ��� x

subplot(3,1,3);
highlow(msft(:,4),msft(:,5),msft(:,6));%��������� ��������� �������� ��� ��������� �����

title(' Company Microsoft , 9/24/07-9/19/08','fontweight','b');
datetick('x','mm/dd/yy'); %���'����� ����������� ���� ����� ��� x
