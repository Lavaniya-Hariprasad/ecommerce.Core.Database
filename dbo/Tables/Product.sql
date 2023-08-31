CREATE TABLE [dbo].[Product] (
    [product_id]          INT             IDENTITY (1, 1) NOT NULL,
    [user_Id]             INT             NOT NULL,
    [category_id]         INT             NOT NULL,
    [product_name]        VARCHAR (255)   NOT NULL,
    [price]               DECIMAL (10, 2) NOT NULL,
    [discount_percentage] INT             NULL,
    [available_quantity]  INT             NOT NULL,
    PRIMARY KEY CLUSTERED ([product_id] ASC),
    FOREIGN KEY ([category_id]) REFERENCES [dbo].[Category] ([category_id]),
    FOREIGN KEY ([user_Id]) REFERENCES [dbo].[User] ([user_id])
);

