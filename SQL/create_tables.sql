DROP TABLE ������������
DROP TABLE ����
DROP TABLE ��������
DROP TABLE ���������
DROP TABLE �������
DROP TABLE �����

CREATE TABLE ���� (
	ID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	�������� nvarchar(50),
	is_archived bit,
)

CREATE TABLE ������������ (
	ID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	����� nvarchar(30),
	������ nvarchar(30),
	ID_���� int NOT NULL,
	is_archived bit,
	FOREIGN KEY (ID_����) REFERENCES ���� (ID),
)

CREATE TABLE ����� (
	ID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	�������� nvarchar(50),
	�����������_����� nvarchar(150),
	is_archived bit,
)

CREATE TABLE ������� (
	ID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	��� nvarchar(50),
	�����_����� bigint,
	����� nvarchar(150),
	ID_����� int NOT NULL,
	is_archived bit,
	FOREIGN KEY (ID_�����) REFERENCES ����� (ID),
)

CREATE TABLE ��������� (
	ID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	����� nvarchar(150),
	ID_����� int NOT NULL,
	is_archived bit,
	FOREIGN KEY (ID_�����) REFERENCES ����� (ID),
)

CREATE TABLE �������� (
	ID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	ID_������� int NOT NULL,
	ID_��������� int NOT NULL,
	����_����� date,
	����� money,
	is_archived bit,
	FOREIGN KEY (ID_�������) REFERENCES ������� (ID),
	FOREIGN KEY (ID_���������) REFERENCES ��������� (ID),
)