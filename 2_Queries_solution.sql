-- 1. Total Seats

select count (distinct  Parliament_Constituency) as Total_Seats from public.constituencies_results;

-- 2. What is the total number of seats available for elections in each state

select s.state as States , count(cr.constituency_id) as Seats
from public.constituencies_results as cr
join statewise_result as sr on cr.parliament_constituency = sr.parliament_constituency
join state as s on s.state_id= sr.state_id group by s.state order by s.state;

-- 3. Total Seats Won by NDA Allianz

SELECT 
    SUM(CASE 
            WHEN party IN (
                'Bharatiya Janata Party - BJP', 
                'Janata Dal  (United) - JD(U)',
				'Hindustani Awam Morcha (Secular) - HAMS', 
                'Shiv Sena - SHS', 
                'Nationalist Congress Party - NCP',
                'Apna Dal (Soneylal) - ADAL', 
                'AJSU Party - AJSUP', 
                'Rashtriya Lok Dal - RLD', 
                'Janasena Party - JnP', 
				'Janata Dal  (Secular) - JD(S)',
                'Asom Gana Parishad - AGP',
  				'Telugu Desam - TDP', 
                'Sikkim Krantikari Morcha - SKM'
				'Lok Janshakti Party(Ram Vilas) - LJPRV'
            ) THEN Won
            ELSE 0 
        END) AS NDA_Total_Seats_Won
FROM 
    partywise_results;
-- 4 .Seats Won by NDA Allianz Parties

SELECT 
    party as Party_Name,
    won as Seats_Won
FROM 
    partywise_results
WHERE 
    party IN ( 'Bharatiya Janata Party - BJP', 
                'Janata Dal  (United) - JD(U)',
				'Hindustani Awam Morcha (Secular) - HAMS', 
                'Shiv Sena - SHS', 
                'Nationalist Congress Party - NCP',
                'Apna Dal (Soneylal) - ADAL', 
                'AJSU Party - AJSUP', 
                'Rashtriya Lok Dal - RLD', 
                'Janasena Party - JnP', 
				'Janata Dal  (Secular) - JD(S)',
                'Asom Gana Parishad - AGP',
  				'Telugu Desam - TDP', 
                'Sikkim Krantikari Morcha - SKM'
				'Lok Janshakti Party(Ram Vilas) - LJPRV'
    )
ORDER BY Seats_Won DESC;


-- 5. Total Seats Won by I.N.D.I.A. Allianz

SELECT 
    SUM(CASE 
            WHEN party IN (
                'Aam Aadmi Party - AAAP',
				'Indian National Congress - INC',
                'Samajwadi Party - SP',
                'All India Trinamool Congress - AITC',
                'Bharat Adivasi Party - BHRTADVSIP',
                'Communist Party of India  (Marxist) - CPI(M)',
                'Marumalarchi Dravida Munnetra Kazhagam - MDMK',
                'Kerala Congress - KEC',
                'Jammu & Kashmir National Conference - JKN',
                'Rashtriya Loktantrik Party - RLTP',
				'Shiv Sena (Uddhav Balasaheb Thackrey) - SHSUBT',
                'Communist Party of India - CPI',
                'Nat`Jammu & Kashmir National Conference - JKN',
                'Jharkhand Mukti Morcha - JMM',
				'Revolutionary Socialist Party - RSP','Viduthalai Chiruthaigal Katchi - VCK'
				'Communist Party of India  (Marxist-Leninist)  (Liberation) - CPI(ML)(L)',
                'Indian Union Muslim League - IUML',
                'Nationalist Congress Party Sharadchandra Pawar - NCPSP',
                'Rashtriya Janata Dal - RJD',
                'Dravida Munnetra Kazhagam - DMK'
            ) THEN Won
            ELSE 0 
        END) AS INDIA_Total_Seats_Won
FROM 
    partywise_results; 

-- 6. Seats Won by I.N.D.I.A. Allianz Parties
SELECT 
    party as Party_Name,
    won as Seats_Won
FROM 
    partywise_results
WHERE 
    party IN (
         		'Aam Aadmi Party - AAAP',
				'Indian National Congress - INC',
                'Samajwadi Party - SP',
                'All India Trinamool Congress - AITC',
                'Bharat Adivasi Party - BHRTADVSIP',
                'Communist Party of India  (Marxist) - CPI(M)',
                'Marumalarchi Dravida Munnetra Kazhagam - MDMK',
                'Kerala Congress - KEC',
                'Jammu & Kashmir National Conference - JKN',
                'Rashtriya Loktantrik Party - RLTP',
				'Shiv Sena (Uddhav Balasaheb Thackrey) - SHSUBT',
                'Communist Party of India - CPI',
                'Nat`Jammu & Kashmir National Conference - JKN',
                'Jharkhand Mukti Morcha - JMM',
				'Revolutionary Socialist Party - RSP','Viduthalai Chiruthaigal Katchi - VCK'
				'Communist Party of India  (Marxist-Leninist)  (Liberation) - CPI(ML)(L)',
                'Indian Union Muslim League - IUML',
                'Nationalist Congress Party Sharadchandra Pawar - NCPSP',
                'Rashtriya Janata Dal - RJD',
                'Dravida Munnetra Kazhagam - DMK'
    )
ORDER BY Seats_Won DESC;

-- 7. Add new column field in table partywise_results to get the Party Allianz as NDA, I.N.D.I.A and OTHER
ALTER TABLE partywise_results
	ADD party_alliance VARCHAR(50);

UPDATE partywise_results
	SET party_alliance = 'I.N.D.I.A'
WHERE party IN (
 				'Aam Aadmi Party - AAAP',
				'Indian National Congress - INC',
                'Samajwadi Party - SP',
                'All India Trinamool Congress - AITC',
                'Bharat Adivasi Party - BHRTADVSIP',
                'Communist Party of India  (Marxist) - CPI(M)',
                'Marumalarchi Dravida Munnetra Kazhagam - MDMK',
                'Kerala Congress - KEC',
                'Jammu & Kashmir National Conference - JKN',
                'Rashtriya Loktantrik Party - RLTP',
				'Shiv Sena (Uddhav Balasaheb Thackrey) - SHSUBT',
                'Communist Party of India - CPI',
                'Nat`Jammu & Kashmir National Conference - JKN',
                'Jharkhand Mukti Morcha - JMM',
				'Revolutionary Socialist Party - RSP','Viduthalai Chiruthaigal Katchi - VCK'
				'Communist Party of India  (Marxist-Leninist)  (Liberation) - CPI(ML)(L)',
                'Indian Union Muslim League - IUML',
                'Nationalist Congress Party Sharadchandra Pawar - NCPSP',
                'Rashtriya Janata Dal - RJD',
                'Dravida Munnetra Kazhagam - DMK');

UPDATE partywise_results
	SET party_alliance = 'NDA'
WHERE party IN ('Bharatiya Janata Party - BJP', 
                'Janata Dal  (United) - JD(U)',
				'Hindustani Awam Morcha (Secular) - HAMS', 
                'Shiv Sena - SHS', 
                'Nationalist Congress Party - NCP',
                'Apna Dal (Soneylal) - ADAL', 
                'AJSU Party - AJSUP', 
                'Rashtriya Lok Dal - RLD', 
                'Janasena Party - JnP', 
				'Janata Dal  (Secular) - JD(S)',
                'Asom Gana Parishad - AGP',
  				'Telugu Desam - TDP', 
                'Sikkim Krantikari Morcha - SKM'
				'Lok Janshakti Party(Ram Vilas) - LJPRV'
				);

UPDATE partywise_results
	SET party_alliance = 'OTHER'
WHERE party_alliance IS NULL;

-- 8. Which party alliance (NDA, I.N.D.I.A, or OTHER) won the most seats across all states?

SELECT 
    p.party_alliance,
    COUNT(cr.constituency_id) AS Seats_Won
FROM 
    constituencies_results cr
JOIN 
    partywise_results p ON cr.Party_ID = p.Party_ID
WHERE 
    p.party_alliance IN ('NDA', 'I.N.D.I.A', 'OTHER')
GROUP BY 
    p.party_alliance
ORDER BY 
    Seats_Won DESC;

-- 9. Winning candidate's name, their party name, total votes, and the margin of victory for a specific state and constituency?

select cr.winning_candidate, pr.party, cr.total_votes, cr.margin, s.state, cr.constituency_name from constituencies_results as cr
join constituencies_details as cd on cd.constituency_id = cr.constituency_id
join statewise_result as sr on sr.parliament_constituency= cr.parliament_constituency
join state as s on s.state_id = sr.state_id 
join partywise_results as pr on pr.party_id = cr.party_id
WHERE s.state = 'Haryana' AND cr.constituency_name = 'KARNAL' group by 1,2,3,4,5,6;

-- 10. What is the distribution of EVM votes versus postal votes for candidates in a specific constituency?

select cd.candidate, cd.party, cd.evm_votes, cd.postal_votes, cd.total_votes, cr.constituency_name from constituencies_details as cd
join constituencies_results as cr on cr.constituency_id = cd.constituency_id 
where cr.constituency_name = 'AMBALA'
group by 1,2,3,4,5,6 order by cd.total_votes desc ;

-- 11. Which parties won the most seats in State, and how many seats did each party win?

select p.party, count(cr.constituency_id) as Seats_won from partywise_results as p
join constituencies_results as cr on cr.party_id = p.party_id 
join statewise_result as sr on sr.parliament_constituency = cr.parliament_constituency
join state on state.state_id = sr.state_id
where state.state ='Haryana'  group by 1 order by 2 desc;



-- 12. What is the total number of seats won by each party alliance (NDA, I.N.D.I.A, and OTHER) in each state for the India Elections 2024?

select s.state, 
sum(case when p.party_alliance ='NDA' then 1 else 0 end) as nda_seats_won,
sum(case when p.party_alliance ='I.N.D.I.A' then 1 else 0 end) as India_seats_won,
sum(case when p.party_alliance ='OTHER' then 1 else 0 end) as others_seats_won
from partywise_results as p
join constituencies_results as cr on cr.party_id = p.party_id 
join statewise_result as sr on sr.parliament_constituency = cr.parliament_constituency
join state  as s on s.state_id = sr.state_id 
where p.party_alliance in ('NDA','INDIA','OTHER')
group by 1  order by 1;


-- 13. Which candidate received the highest number of EVM votes in each constituency (Top 10)?

SELECT 
    cr.constituency_name,
    cd.constituency_id,
    cd.candidate,
    cd.evm_votes
FROM 
    constituencies_details cd
JOIN 
    constituencies_results cr ON cd.constituency_id = cr.constituency_id
WHERE 
    cd.evm_votes = (
        SELECT MAX(cd1.evm_votes)
        FROM constituencies_details cd1
        WHERE cd1.constituency_id = cd.constituency_id
    )
ORDER BY 
    cd.evm_votes DESC limit 10;


-- 14. Which candidate won and which candidate was the runner-up in each constituency of State for the 2024 elections?

WITH RankedCandidates AS (
    SELECT 
        cd.Constituency_ID,
        cd.Candidate,
        cd.Party,
        cd.EVM_Votes,
        cd.Postal_Votes,
        cd.EVM_Votes + cd.Postal_Votes AS Total_Votes,
        ROW_NUMBER() OVER (PARTITION BY cd.Constituency_ID ORDER BY cd.EVM_Votes + cd.Postal_Votes DESC) AS VoteRank
    FROM 
        constituencywise_details cd
    JOIN 
        constituencywise_results cr ON cd.Constituency_ID = cr.Constituency_ID
    JOIN 
        statewise_results sr ON cr.Parliament_Constituency = sr.Parliament_Constituency
    JOIN 
        states s ON sr.State_ID = s.State_ID
    WHERE 
        s.State = 'Maharashtra'
)

SELECT 
    cr.Constituency_Name,
    MAX(CASE WHEN rc.VoteRank = 1 THEN rc.Candidate END) AS Winning_Candidate,
    MAX(CASE WHEN rc.VoteRank = 2 THEN rc.Candidate END) AS Runnerup_Candidate
FROM 
    RankedCandidates rc
JOIN 
    constituencywise_results cr ON rc.Constituency_ID = cr.Constituency_ID
GROUP BY 
    cr.Constituency_Name
ORDER BY 
    cr.Constituency_Name;

-- 15. For the state of Haryana,punjab,rajasthan, what are the total number of seats, total number of candidates, total number of parties, total votes (including EVM and postal), and the breakdown of EVM and postal votes?


SELECT s.state,
    COUNT(DISTINCT cr.constituency_id) AS Total_Seats,
    COUNT(DISTINCT cd.candidate) AS Total_Candidates,
    COUNT(DISTINCT p.party) AS Total_Parties,
    SUM(cd.evm_votes + cd.postal_votes) AS Total_Votes,
    SUM(cd.evm_votes) AS Total_EVM_Votes,
    SUM(cd.postal_votes) AS Total_Postal_Votes
FROM 
    constituencies_results cr
JOIN 
    constituencies_details cd ON cr.constituency_id = cd.constituency_id
JOIN 
    statewise_result sr ON cr.parliament_constituency = sr.parliament_constituency
JOIN 
    state s ON sr.state_id = s.state_id
JOIN 
    partywise_results p ON cr.party_id = p.party_id
WHERE 
    s.state IN ('Haryana','Punjab','Rajasthan') group by 1;
