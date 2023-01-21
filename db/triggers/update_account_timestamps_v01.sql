CREATE TRIGGER update_account_timestamps
    BEFORE UPDATE
    ON
        accounts
    FOR EACH ROW
    EXECUTE PROCEDURE update_account_timestamps();
