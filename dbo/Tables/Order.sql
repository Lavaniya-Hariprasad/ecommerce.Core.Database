CREATE TABLE [dbo].[Order] (
    [order_id]      INT             IDENTITY (1, 1) NOT NULL,
    [user_id]       INT             NOT NULL,
    [order_date]    DATE            NOT NULL,
    [delivery_date] DATE            NOT NULL,
    [total_amount]  DECIMAL (10, 2) NOT NULL,
    [status]        VARCHAR (50)    NOT NULL,
    [payment]       VARCHAR (50)    NOT NULL,
    PRIMARY KEY CLUSTERED ([order_id] ASC),
    FOREIGN KEY ([user_id]) REFERENCES [dbo].[User] ([user_id])
);

