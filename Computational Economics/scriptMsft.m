%Σχετικος κώδικας υπολογισμού των δεικτών για τα δεδομένα μας.

macd_msft=macd(msft);%η προεπιλογή είναι ο υπολογισμός του δείκτη με βάση τις τιμές %κλεισίματος

rsi_msft=rsindex(msft(:,6));

subplot(3,1,1);
plot(macd_msft);

title('Ο δείκτης MACD για την μετοχή της Microsoft , 9/24/07-9/19/08','fontweight','b');
datetick('x','mm/dd/yy'); %Εμφ'ανιση ημερομηνίας στον άξονα των x

subplot(3,1,2);
plot(rsi_msft);

title('Ο δείκτης RSI για την μετοχή της Microsoft , 9/24/07-9/19/08','fontweight','b');
datetick('x','mm/dd/yy'); %Εμφ'ανιση ημερομηνίας στον άξονα των x

subplot(3,1,3);
highlow(msft(:,4),msft(:,5),msft(:,6));%Διάγραμμα εμφάνισης ανώτατης και κατώτατης τιμής

title(' Company Microsoft , 9/24/07-9/19/08','fontweight','b');
datetick('x','mm/dd/yy'); %Εμφ'ανιση ημερομηνίας στον άξονα των x
