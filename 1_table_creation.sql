-- creating  tables for our project 
create table constituencies_details
(
	SN int,
	Candidate	varchar(70),
	Party	varchar(70),
	EVM_Votes	int,
	Postal_Votes	int,
	Total_Votes	int,
	Constituency_ID text
);


select * from constituencies_details;

CREATE TABLE constituencies_results (
    Sn INT ,  -- Integer for unique identification
    Parliament_Constituency VARCHAR(255),  -- String for the name of the constituency
    Constituency_Name VARCHAR(255),  -- String for the name of the constituency
    Winning_Candidate VARCHAR(255),  -- String for the name of the winning candidate
    Total_Votes INT,  -- Integer for the total number of votes
    Margin INT,  -- Integer for the margin of victory
    Constituency_ID text,  -- Integer for the ID of the constituency
    Party_ID INT  -- Integer for the ID of the party
);


CREATE TABLE partywise_results (
    Party VARCHAR(255),  -- String for the name of the party
    Won INT,  -- Integer indicating whether the party won (1 for won, 0 for not won)
    Party_ID INT   -- Integer for the unique ID of the party
);

CREATE TABLE state (
    State_ID text,
    State VARCHAR(255)  -- String for the name of the state
);

CREATE TABLE statewise_result (
    Constituency VARCHAR(255),  -- String for the name of the constituency
    Constituency_No INT,  -- Integer for the constituency number
    Parliament_Constituency VARCHAR(255),  -- String for the parliament constituency
    Leading_Candidate VARCHAR(255),  -- String for the name of the leading candidate
    Trailing_Candidate VARCHAR(255),  -- String for the name of the trailing candidate
    Margin INT,  -- Integer for the margin of votes
    Status VARCHAR(255),  -- String for the status of the election (e.g., "Won", "Lost")
    State_ID text,  -- Integer linking to the State_ID from the state table
    State VARCHAR(255)  -- String for the name of the state
    
);


