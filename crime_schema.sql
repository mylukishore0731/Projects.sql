-- Create Crime Record & Investigation Database schema

CREATE TABLE Officers (
    OfficerID NUMBER(10) PRIMARY KEY,
    Name VARCHAR(100),
    Rank VARCHAR(50),
    Department VARCHAR(100)
);

CREATE TABLE Cases (
    CaseID NUMBER(50) PRIMARY KEY,
    Title VARCHAR2(100) NOT NULL,
    Status VARCHAR(20) CHECK (Status IN ('Open', 'Closed', 'Under Investigation')),
    StartDate DATE NOT NULL,
    EndDate DATE,
    FOREIGN KEY OfficerID NUMBER(20) REFERENCES Officers(OfficerID)
);

CREATE TABLE Suspects (
    SuspectID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Age NUMBER(20),
    Gender VARCHAR(10),
    FOREIGN KEY CaseID NUMBER(50) REFERENCES Cases(CaseID),
   
);

CREATE TABLE Evidence (
    EvidenceID VARCHAR(50) PRIMARY KEY,
    Description VARCHAR2(100),
    CollectedDate DATE,
    FOREIGN KEY CaseID NUMBER(50) REFERENCES Cases(CaseID),
    UpdatedBy NUMBER REFERENCES Officers(OfficerID)
);

-- Indexes
CREATE INDEX idx_case_status ON Cases(Status);
CREATE INDEX idx_suspect_name ON Suspects(Name);
