DROP TABLE IF EXISTS userTicket;
DROP TABLE IF EXISTS ticket;
DROP TABLE IF EXISTS event;
DROP TABLE IF EXISTS user;

CREATE TABLE user(
    userId binary(16) not null,
    userActivationToken char(32),
    userEmail varchar(128) not null,
    userHash char(97) not null,
    userName varchar(32) not null,
    userAddress varchar(256) not null,
    unique(userEmail),
    primary key(userId)
);

CREATE TABLE event(
    eventId binary(16) not null,
    eventDate datetime(6) not null,
    eventLocation varchar(256) not null,
    eventType varchar(64) not null,
    primary key(eventId)
);

CREATE TABLE ticket(
    ticketId binary(16) not null,
    ticketEventId binary(16) not null,
    ticketClaimed tinyint unsigned not null,
    ticketPrice decimal(7,2) not null,
    ticketSeat varchar(32) not null,
    unique(ticketSeat),
    index(ticketEventId),
    foreign key(ticketEventId) references event(eventId),
    primary key(ticketId)
);

CREATE TABLE userTicket(
    userTicketUserId binary(16) not null,
    userTicketTicketId binary(16) not null,
    userTicketDateTime datetime(6) not null,
    index(userTicketUserId),
    index(userTicketTicketId),
    foreign key(userTicketUserId) references user(userId),
    foreign key(userTicketTicketId) references ticket(ticketId),
    primary key(userTicketUserId, userTicketTicketId)
);



