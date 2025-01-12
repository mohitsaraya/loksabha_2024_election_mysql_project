<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<h1>Lok Sabha Election 2024 Data Analysis</h1>
<h2>About</h2>
<p>This project involves analyzing data from the Lok Sabha Election 2024 to gain insights into voting patterns, party performances, and constituency dynamics. The primary objective is to understand electoral outcomes and strategize for future elections.</p>
<h2>Objectives</h2>
<p>The main goal is to derive insights from the Lok Sabha Election 2024 data by exploring various factors such as voter demographics, party performances, and constituency-level results.</p>
<h2>Dataset Description</h2>
<table>
            <thead>
                <tr>
                    <th>Column</th>
                    <th>Description</th>
                    <th>Data Type</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>SN</td>
                    <td>Serial Number</td>
                    <td>INT</td>
                </tr>
                <tr>
                    <td>Candidate</td>
                    <td>Name of the candidate</td>
                    <td>VARCHAR(70)</td>
                </tr>
                <tr>
                    <td>Party</td>
                    <td>Name of the political party</td>
                    <td>VARCHAR(70)</td>
                </tr>
                <tr>
                    <td>EVM_Votes</td>
                    <td>Votes from Electronic Voting Machines</td>
                    <td>INT</td>
                </tr>
                <tr>
                    <td>Postal_Votes</td>
                    <td>Votes from postal ballots</td>
                    <td>INT</td>
                </tr>
                <tr>
                    <td>Total_Votes</td>
                    <td>Total votes received</td>
                    <td>INT</td>
                </tr>
                <tr>
                    <td>Constituency_ID</td>
                    <td>Unique identifier for the constituency</td>
                    <td>TEXT</td>
                </tr>
            </tbody>
        </table>
        <h2>File: <code>constituencies_results.csv</code></h2>
        <table>
            <thead>
                <tr>
                    <th>Column</th>
                    <th>Description</th>
                    <th>Data Type</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Sn</td>
                    <td>Serial Number</td>
                    <td>INT</td>
                </tr>
                <tr>
                    <td>Parliament_Constituency</td>
                    <td>Name of the parliament constituency</td>
                    <td>VARCHAR(255)</td>
                </tr>
                <tr>
                    <td>Constituency_Name</td>
                    <td>Name of the constituency</td>
                    <td>VARCHAR(255)</td>
                </tr>
                <tr>
                    <td>Winning_Candidate</td>
                    <td>Name of the winning candidate</td>
                    <td>VARCHAR(255)</td>
                </tr>
                <tr>
                    <td>Total_Votes</td>
                    <td>Total votes received</td>
                    <td>INT</td>
                </tr>
                <tr>
                    <td>Margin</td>
                    <td>Margin of victory</td>
                    <td>INT</td>
                </tr>
                <tr>
                    <td>Constituency_ID</td>
                    <td>Unique identifier for the constituency</td>
                    <td>TEXT</td>
                </tr>
                <tr>
                    <td>Party_ID</td>
                    <td>Unique identifier for the party</td>
                    <td>INT</td>
                </tr>
            </tbody>
        </table>
        <h2>File: <code>partywise_results.csv</code></h2>
        <table>
            <thead>
                <tr>
                    <th>Column</th>
                    <th>Description</th>
                    <th>Data Type</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Party</td>
                    <td>Name of the political party</td>
                    <td>VARCHAR(255)</td>
                </tr>
                <tr>
                    <td>Won</td>
                    <td>Indicator of whether the party won (1 for won, 0 for not won)</td>
                    <td>INT</td>
                </tr>
                <tr>
                    <td>Party_ID</td>
                    <td>Unique identifier for the party</td>
                    <td>INT</td>
                </tr>
                <tr>
                    <td>Party_Alliance</td>
                    <td>Political alliance (e.g., NDA, I.N.D.I.A, OTHER)</td>
                    <td>VARCHAR(50)</td>
                </tr>
            </tbody>
        </table>
        <h2>File: <code>state.csv</code></h2>
        <table>
            <thead>
                <tr>
                    <th>Column</th>
                    <th>Description</th>
                    <th>Data Type</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>State_ID</td>
                    <td>Unique identifier for the state</td>
                    <td>TEXT</td>
                </tr>
                <tr>
                    <td>State</td>
                    <td>Name of the state</td>
                    <td>VARCHAR(255)</td>
                </tr>
            </tbody>
        </table>
        <h2>File: <code>statewise_result.csv</code></h2>
        <table>
            <thead>
                <tr>
                    <th>Column</th>
                    <th>Description</th>
                    <th>Data Type</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Constituency</td>
                    <td>Name of the constituency</td>
                    <td>VARCHAR(255)</td>
                </tr>
                <tr>
                    <td>Constituency_No</td>
                    <td>Constituency number</td>
                    <td>INT</td>
                </tr>
                <tr>
                    <td>Parliament_Constituency</td>
                    <td>Name of the parliament constituency</td>
                    <td>VARCHAR(255)</td>
                </tr>
                <tr>
                    <td>Leading_Candidate</td>
                    <td>Name of the leading candidate</td>
                    <td>VARCHAR(255)</td>
                </tr>
                <tr>
                    <td>Trailing_Candidate</td>
                    <td>Name of the trailing candidate</td>
                    <td>VARCHAR(255)</td>
                </tr>
                <tr>
                    <td>Margin</td>
                    <td>Margin of votes</td>
                    <td>INT</td>
                </tr>
                <tr>
                    <td>Status</td>
                    <td>Status of the election (e.g., "Won", "Lost")</td>
                    <td>VARCHAR(255)</td>
                </tr>
                <tr>
                    <td>State_ID</td>
                    <td>Unique identifier linking to the state table</td>
                    <td>TEXT</td>
                </tr>
                <tr>
                    <td>State</td>
                    <td>Name of the state</td>
                    <td>VARCHAR(255)</td>
                </tr>
            </tbody>
        </table>
<h2>Analysis Categories</h2>
<h3>1. Statewise Analysis</h3>
<ul>
    <li>Evaluate state-level election outcomes to identify voting trends and party dominance.</li>
</ul>
<h3>2. Constituency Analysis</h3>
<ul>
    <li>Assess individual constituencies to understand local dynamics and voter preferences.</li>
</ul>
<h3>3. Party Performance Analysis</h3>
<ul>
    <li>Analyze the performance of political parties across various states and constituencies.</li>
</ul>
<h2>Methodology</h2>
<h3>1. Data Wrangling</h3>
<p>Inspect data for missing or inconsistent values and address them appropriately. Create a structured database schema to store and query the election data efficiently.</p>
<h3>2. Exploratory Data Analysis (EDA)</h3>
<p>Perform EDA to answer key questions and generate visual insights from the data.</p>
<h2>Key Business Questions</h2>
<h3>General Questions</h3>
<ul>
    <li>How many states participated in the Lok Sabha Election 2024?</li>
    <li>What is the total number of constituencies?</li>
    <li>What is the total number of seats available for elections in each state?</li>
</ul>
<h3>Statewise Analysis Questions</h3>
<ul>
    <li>Which state had the highest voter turnout?</li>
    <li>Which state recorded the most significant margin of victory?</li>
    <li>What is the total number of seats won by each party alliance (NDA, I.N.D.I.A, and OTHER) in each state for the India Elections 2024?</li>
</ul>
<h3>Constituency Analysis Questions</h3>
<ul>
    <li>Which constituency had the closest contest?</li>
    <li>What is the distribution of voter turnout across constituencies?</li>
    <li>Winning candidate's name, their party name, total votes, and the margin of victory for a specific state and constituency.</li>
    <li>What is the distribution of EVM votes versus postal votes for candidates in a specific constituency?</li>
    <li>Which candidate received the highest number of EVM votes in each constituency (Top 10)?</li>
    <li>Which candidate won and which candidate was the runner-up in each constituency of State for the 2024 elections?</li>
</ul>
<h3>Party Performance Analysis Questions</h3>
<ul>
    <li>Which party won the most seats overall?</li>
    <li>Which party had the highest vote share percentage?</li>
    <li>Which party alliance (NDA, I.N.D.I.A, or OTHER) won the most seats across all states?</li>
    <li>Total seats won by NDA Alliance and I.N.D.I.A. Alliance.</li>
    <li>Seats won by NDA Alliance Parties and I.N.D.I.A. Alliance Parties.</li>
</ul>
<h3>State-Specific Analysis Questions</h3>
<ul>
    <li>For the state of Haryana, Punjab, and Rajasthan, what are the total number of seats, total number of candidates, total number of parties, total votes (including EVM and postal), and the breakdown of EVM and postal votes?</li>
    <li>Which parties won the most seats in each state, and how many seats did each party win?</li>
</ul>
<h2>Conclusion</h2>
<p>This project provides a comprehensive analysis of the Lok Sabha Election 2024, offering insights into electoral behavior, party performances, and constituency dynamics. The findings can help political analysts and strategists make informed decisions for future elections.</p>
</body>
</html>
