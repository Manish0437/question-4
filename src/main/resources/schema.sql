
-- Create Event Table
CREATE TABLE event (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    date VARCHAR(255)
);

-- Create Sponsor Table
CREATE TABLE sponsor (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    industry VARCHAR(255)
);



-- Create Junction Table (Event_Sponsor)
CREATE TABLE event_sponsor (
    sponsorId INTEGER,
    eventId INTEGER,
    FOREIGN KEY (sponsorId) REFERENCES sponsor(id),
    FOREIGN KEY (eventId) REFERENCES event(id),
    PRIMARY KEY (sponsorId, eventId)
);

