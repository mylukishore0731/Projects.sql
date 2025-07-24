# Crime Record & Investigation Database

## Overview
This project implements a crime record and investigation database using ORACLE SQL DEVELOPER. It includes tables for officers, cases, suspects, and evidence, along with triggers to log evidence updates and views for common queries.

## Database Schema
- **Officers**: Stores officer details.
- **Cases**: Stores case details including status and lead officer.
- **Suspects**: Stores suspect details linked to cases.
- **Evidence**: Stores evidence details linked to cases and officers.
- **EvidenceUpdatesLog**: Logs updates to evidence.

## Files
- `crime_schema.sql`: Contains table creation and indexes.
- `crime_views.sql`: Contains views for officer workload and unresolved cases.
- `crime_sample_data.sql`: Contains sample data inserts for testing.
- `crime_queries.sql`: Contains useful queries for data retrieval.

## Setup Instructions
1. Install if not already installed.
2. Create a new database for the project.
3. Run the SQL scripts in the following order:
   - `crime_schema.sql`
   - `crime_views.sql`
   - `crime_sample_data.sql`
4. Use `crime_queries.sql` to run example queries.

## Testing
- Verify that tables are created successfully.
- Verify that sample data is inserted.
- Test triggers by updating evidence records and checking the `EvidenceUpdatesLog`.
- Test views by querying `OfficerWorkload` and `UnresolvedCases`.

