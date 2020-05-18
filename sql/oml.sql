# 83ceff9fff4b41c780480a1feebf0f8a

# e019a763a4734715a336ae3dd4549abb

# dfb560a1a4eb4fb9aa454c3594dfa02d

# 7b398f85dd5b4186bfcc19dc9298f76c

# 6685960e3c294056964d23013986e4ea

# 737033f1c79e4beeaa72a915f36a444e

# 0f259acf9a20448c98562d74f34747e8

# 88e06293542b453aa99715e597771312


INSERT INTO user(userId, userActivationToken, userEmail, userHash, userName, userAddress) VALUES (UNHEX("83ceff9fff4b41c780480a1feebf0f8a"), "vYhDpGgnH8WQrEQyUaU75TNd3KVu2qSP", "will.garcia@gmail.com", "k5mhjgbw5nShCPpATswxeMxdzGeFBSFJyWqhS5Xn3SY6EG4CGa8JAJJQusBeTs6NSFz8ue8MK3bedfTtqX6fpQsjGW2Lrb7PT", "Will Garcia", "3300 Shallowford Rd Albuquerque, NM 87111");

INSERT INTO user(userId, userActivationToken, userEmail, userHash, userName, userAddress) VALUES (UNHEX("e019a763a4734715a336ae3dd4549abb"), "gxSfJrwLXKzr9p6XXBEN2rdW37SF3Ypy", "joe.maifeld@gmail.com", "duftQ8tVa9FNzCwWDMduaqtzRktQRSbtExsrAcDMsjWuxPz9FfMyzEyHhmvUV9VJYPW62jXajTT9kLCpvmQxFJq8mYDvM2q7X", "Joe Maifeld", "4327 Shannon Ridge Ct Atlanta, GA 30032");

INSERT INTO event(eventId, eventDate, eventLocation, eventType) VALUES (UNHEX("dfb560a1a4eb4fb9aa454c3594dfa02d"), "2016-10-09 13:00:00", "1701 Bryant St, Denver, CO 80204", "NFL");

UPDATE user SET userEmail = "pat.maifeld@gmail.com", userName = "Pat Maifeld" WHERE userName = "Joe Maifeld";

DELETE FROM user WHERE userId = UNHEX("e019a763a4734715a336ae3dd4549abb");

INSERT INTO ticket(ticketId, ticketEventId, ticketClaimed, ticketPrice, ticketSeat) VALUES (UNHEX("7b398f85dd5b4186bfcc19dc9298f76c"), UNHEX("dfb560a1a4eb4fb9aa454c3594dfa02d"), 1, 00158.54, "Sec 302 Row 13 Seat 5");

SELECT ticketId, ticketEventId, ticketClaimed, ticketPrice, ticketSeat FROM ticket WHERE ticketEventId = UNHEX("dfb560a1a4eb4fb9aa454c3594dfa02d");

SELECT ticket.ticketId, ticket.ticketEventId, ticket.ticketClaimed, ticket.ticketPrice, ticket.ticketSeat FROM ticket INNER JOIN event ON ticket.ticketEventId = event.eventId WHERE ticket.ticketId = UNHEX("7b398f85dd5b4186bfcc19dc9298f76c");


SELECT likeProfileId, likeTweetId, likeDate FROM like WHERE tweetContent = "Broseph Stalin";