CREATE INDEX user_index
ON User (UserName);

GO

CREATE INDEX post_index
ON Post (Text, CreatedBy, CreatedDate, ParentPost);