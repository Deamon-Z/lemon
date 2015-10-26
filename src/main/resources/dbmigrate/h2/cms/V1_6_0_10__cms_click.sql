

-------------------------------------------------------------------------------
--  cms click
-------------------------------------------------------------------------------
CREATE TABLE CMS_CLICK(
        ID BIGINT GENERATED BY DEFAULT AS IDENTITY(START WITH 1) NOT NULL,
	TYPE VARCHAR(50),
	USER_ID VARCHAR(50),
	CREATE_TIME DATETIME,
	PRIORITY INT,
	TENANT_ID VARCHAR(64),
	ARTICLE_ID BIGINT,
	CONSTRAINT PK_CMS_CLICK PRIMARY KEY(ID),
	CONSTRAINT FK_CMS_CLICK_ARTICLE FOREIGN KEY(ARTICLE_ID) REFERENCES CMS_ARTICLE(ID)
);
