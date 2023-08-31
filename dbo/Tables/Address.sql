CREATE TABLE [dbo].[Address] (
    [address_id] INT          IDENTITY (1, 1) NOT NULL,
    [user_Id]    INT          NOT NULL,
    [city]       VARCHAR (50) NOT NULL,
    [State]      VARCHAR (50) NOT NULL,
    [pincode]    VARCHAR (10) NOT NULL,
    PRIMARY KEY CLUSTERED ([address_id] ASC),
    FOREIGN KEY ([user_Id]) REFERENCES [dbo].[User] ([user_id])
);

