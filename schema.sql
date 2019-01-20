DROP DATABASE IF EXISTS e2g9ym5tn15bmmxa;
CREATE DATABASE e2g9ym5tn15bmmxa;
USE e2g9ym5tn15bmmxa;

CREATE TABLE friends
(
	id int NOT NULL AUTO_INCREMENT,
	name varchar(255) NOT NULL,
	photo blob NOT NULL,
	score_q1 int NOT NULL,
    score_q2 int NOT NULL,
    score_q3 int NOT NULL,
    score_q4 int NOT NULL,
    score_q5 int NOT NULL,
    score_q6 int NOT NULL,
    score_q7 int NOT NULL,
    score_q8 int NOT NULL,
    score_q9 int NOT NULL,
    score_q10 int NOT NULL,
   	PRIMARY KEY (id)
);


INSERT INTO friends (name, photo, score_q1, score_q2, score_q3, score_q4, score_q5, score_q6, score_q7, score_q8, score_q9, score_q10) VALUE ('Hannah', 'https://images.search.yahoo.com/search/images;_ylt=AwrExdoceDZcLn4An1SJzbkF;_ylu=X3oDMTBsZ29xY3ZzBHNlYwNzZWFyY2gEc2xrA2J1dHRvbg--;_ylc=X1MDOTYwNjI4NTcEX3IDMgRhY3RuA2NsawRiY2sDNnYwbzVhaGR0NDdvcSUyNmIlM0QzJTI2cyUzRGlmBGNzcmNwdmlkA1JVVG1TVEV3TGpKdmd3VlVXOUlmR2dIRE1qWXdNUUFBQUFBaVE1TDAEZnIDbWNhZmVlBGZyMgNzYS1ncARncHJpZANPdWNwR2JpYVI0UzdmbERpaWs0Z0VBBG10ZXN0aWQDVUkwMSUzREI2NjU3BG5fc3VnZwMxMARvcmlnaW4DaW1hZ2VzLnNlYXJjaC55YWhvby5jb20EcG9zAzAEcHFzdHIDBHBxc3RybAMEcXN0cmwDNQRxdWVyeQNwdXBweQR0X3N0bXADMTU0NzA3MzU1NQR2dGVzdGlkA0I2NjU3?gprid=OucpGbiaR4S7flDiik4gEA&pvid=RUTmSTEwLjJvgwVUW9IfGgHDMjYwMQAAAAAiQ5L0&p=puppy&fr=mcafee&fr2=sb-top-images.search.yahoo.com&ei=UTF-8&n=60&x=wrt#id=0&iurl=http%3A%2F%2Fwww.cant-talk.com%2Fwp-content%2Fuploads%2F2014%2F01%2Fpuppy2.jpg&action=click', 1, 1, 2, 2, 3, 3, 4, 4, 5, 5);
insert into friends (name, photo, score_q1, score_q2, score_q3, score_q4, score_q5, score_q6, score_q7, score_q8, score_q9, score_q10) VALUE ('Veronica', 'https://images.search.yahoo.com/search/images;_ylt=AwrExdoceDZcLn4An1SJzbkF;_ylu=X3oDMTBsZ29xY3ZzBHNlYwNzZWFyY2gEc2xrA2J1dHRvbg--;_ylc=X1MDOTYwNjI4NTcEX3IDMgRhY3RuA2NsawRiY2sDNnYwbzVhaGR0NDdvcSUyNmIlM0QzJTI2cyUzRGlmBGNzcmNwdmlkA1JVVG1TVEV3TGpKdmd3VlVXOUlmR2dIRE1qWXdNUUFBQUFBaVE1TDAEZnIDbWNhZmVlBGZyMgNzYS1ncARncHJpZANPdWNwR2JpYVI0UzdmbERpaWs0Z0VBBG10ZXN0aWQDVUkwMSUzREI2NjU3BG5fc3VnZwMxMARvcmlnaW4DaW1hZ2VzLnNlYXJjaC55YWhvby5jb20EcG9zAzAEcHFzdHIDBHBxc3RybAMEcXN0cmwDNQRxdWVyeQNwdXBweQR0X3N0bXADMTU0NzA3MzU1NQR2dGVzdGlkA0I2NjU3?gprid=OucpGbiaR4S7flDiik4gEA&pvid=RUTmSTEwLjJvgwVUW9IfGgHDMjYwMQAAAAAiQ5L0&p=puppy&fr=mcafee&fr2=sb-top-images.search.yahoo.com&ei=UTF-8&n=60&x=wrt#id=0&iurl=http%3A%2F%2Fwww.cant-talk.com%2Fwp-content%2Fuploads%2F2014%2F01%2Fpuppy2.jpg&action=click', 1, 1, 2, 2, 3, 3, 4, 4, 5, 5);
insert into friends (name, photo, score_q1, score_q2, score_q3, score_q4, score_q5, score_q6, score_q7, score_q8, score_q9, score_q10) VALUE ('Dean', 'https://images.search.yahoo.com/search/images;_ylt=AwrExdoceDZcLn4An1SJzbkF;_ylu=X3oDMTBsZ29xY3ZzBHNlYwNzZWFyY2gEc2xrA2J1dHRvbg--;_ylc=X1MDOTYwNjI4NTcEX3IDMgRhY3RuA2NsawRiY2sDNnYwbzVhaGR0NDdvcSUyNmIlM0QzJTI2cyUzRGlmBGNzcmNwdmlkA1JVVG1TVEV3TGpKdmd3VlVXOUlmR2dIRE1qWXdNUUFBQUFBaVE1TDAEZnIDbWNhZmVlBGZyMgNzYS1ncARncHJpZANPdWNwR2JpYVI0UzdmbERpaWs0Z0VBBG10ZXN0aWQDVUkwMSUzREI2NjU3BG5fc3VnZwMxMARvcmlnaW4DaW1hZ2VzLnNlYXJjaC55YWhvby5jb20EcG9zAzAEcHFzdHIDBHBxc3RybAMEcXN0cmwDNQRxdWVyeQNwdXBweQR0X3N0bXADMTU0NzA3MzU1NQR2dGVzdGlkA0I2NjU3?gprid=OucpGbiaR4S7flDiik4gEA&pvid=RUTmSTEwLjJvgwVUW9IfGgHDMjYwMQAAAAAiQ5L0&p=puppy&fr=mcafee&fr2=sb-top-images.search.yahoo.com&ei=UTF-8&n=60&x=wrt#id=0&iurl=http%3A%2F%2Fwww.cant-talk.com%2Fwp-content%2Fuploads%2F2014%2F01%2Fpuppy2.jpg&action=click', 5, 5, 4, 4, 3, 3, 2, 2, 1, 1);
insert into friends (name, photo, score_q1, score_q2, score_q3, score_q4, score_q5, score_q6, score_q7, score_q8, score_q9, score_q10) VALUE ('Patrick', 'https://images.search.yahoo.com/search/images;_ylt=AwrExdoceDZcLn4An1SJzbkF;_ylu=X3oDMTBsZ29xY3ZzBHNlYwNzZWFyY2gEc2xrA2J1dHRvbg--;_ylc=X1MDOTYwNjI4NTcEX3IDMgRhY3RuA2NsawRiY2sDNnYwbzVhaGR0NDdvcSUyNmIlM0QzJTI2cyUzRGlmBGNzcmNwdmlkA1JVVG1TVEV3TGpKdmd3VlVXOUlmR2dIRE1qWXdNUUFBQUFBaVE1TDAEZnIDbWNhZmVlBGZyMgNzYS1ncARncHJpZANPdWNwR2JpYVI0UzdmbERpaWs0Z0VBBG10ZXN0aWQDVUkwMSUzREI2NjU3BG5fc3VnZwMxMARvcmlnaW4DaW1hZ2VzLnNlYXJjaC55YWhvby5jb20EcG9zAzAEcHFzdHIDBHBxc3RybAMEcXN0cmwDNQRxdWVyeQNwdXBweQR0X3N0bXADMTU0NzA3MzU1NQR2dGVzdGlkA0I2NjU3?gprid=OucpGbiaR4S7flDiik4gEA&pvid=RUTmSTEwLjJvgwVUW9IfGgHDMjYwMQAAAAAiQ5L0&p=puppy&fr=mcafee&fr2=sb-top-images.search.yahoo.com&ei=UTF-8&n=60&x=wrt#id=0&iurl=http%3A%2F%2Fwww.cant-talk.com%2Fwp-content%2Fuploads%2F2014%2F01%2Fpuppy2.jpg&action=click', 5, 5, 4, 4, 3, 3, 2, 2, 1, 1);