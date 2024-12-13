
MATCH (n)
DETACH DELETE n;

// Genres
CREATE (SciFiRomance:Genre { name: "Sci-Fi Romance" })
CREATE (FantasyRomance:Genre { name: "Fantasy Romance" })
CREATE (Drama:Genre { name: "Drama" })
CREATE (HistoricalRomance:Genre { name: "Historical Romance" })
CREATE (DetectiveFiction:Genre { name: "Detective Fiction" })

// Books
CREATE (toKillAMockingbird:Book { title: "To Kill a Mockingbird", releaseYear: 1960, price: 15.99, sku: "toKillAMockingbird", rating: 8.8 })
CREATE (toKillAMockingbird)-[:IN_GENRE]->(Drama)
    

CREATE (nineteenEightyFour:Book { title: "1984", releaseYear: 1949, price: 12.99, sku: "1984", rating: 7.4 })
CREATE (nineteenEightyFour)-[:IN_GENRE]->(SciFiRomance)
    

CREATE (prideandprejudice:Book { title: "Pride and Prejudice", releaseYear: 1813, price: 10.99, sku: "prideandprejudice", rating: 9.2 })
CREATE (prideandprejudice)-[:IN_GENRE]->(HistoricalRomance)

CREATE (murderOnTheOrientExpress:Book { title: "Murder On The Orient Express", releaseYear: 1934, price: 12.99, sku: "murderOnTheOrientExpress", rating: 7.4 })
CREATE (murderOnTheOrientExpress)-[:IN_GENRE]->(DetectiveFiction)
    

CREATE (thegreatgatsby:Book { title: "The Great Gatsby", releaseYear: 1925, price: 14.99, sku: "thegreatgatsby", rating: 9.8 })
CREATE (thegreatgatsby)-[:IN_GENRE]->(Drama)
    

CREATE (mobydick:Book { title: "Moby Dick", releaseYear: 1851, price: 17.99, sku: "mobydick", rating: 8.0 })
CREATE (mobydick)-[:IN_GENRE]->(Drama)
    

CREATE (warandpeace:Book { title: "War and Peace", releaseYear: 1869, price: 19.99, sku: "warandpeace", rating: 8.9 })
CREATE (warandpeace)-[:IN_GENRE]->(HistoricalRomance)
    

CREATE (thecatcherintherye:Book { title: "The Catcher in the Rye", releaseYear: 1951, price: 13.99, sku: "thecatcherintherye", rating: 7.3 })
CREATE (thecatcherintherye)-[:IN_GENRE]->(Drama)
    

CREATE (bravenewworld:Book { title: "Brave New World", releaseYear: 1932, price: 16.99, sku: "bravenewworld", rating: 7.4 })
CREATE (bravenewworld)-[:IN_GENRE]->(SciFiRomance)
    

CREATE (thelordoftherings:Book { title: "The Lord of the Rings", releaseYear: 1954, price: 25.99, sku: "thelordoftherings", rating: 9.2 })
CREATE (thelordoftherings)-[:IN_GENRE]->(FantasyRomance)
    

CREATE (harrypotterandthesorcerersstone:Book { title: "Harry Potter and the Sorcerer's Stone", releaseYear: 1997, price: 22.99, sku: "harrypotterandthesorcerersstone", rating: 9.3 })
CREATE (harrypotterandthesorcerersstone)-[:IN_GENRE]->(FantasyRomance)
    

CREATE (janeeyre:Book { title: "Jane Eyre", releaseYear: 1847, price: 11.99, sku: "janeeyre", rating: 7.2 })
CREATE (janeeyre)-[:IN_GENRE]->(HistoricalRomance)
    

CREATE (wutheringheights:Book { title: "Wuthering Heights", releaseYear: 1847, price: 12.99, sku: "wutheringheights", rating: 6.9 })
CREATE (wutheringheights)-[:IN_GENRE]->(HistoricalRomance)
    

CREATE (animalfarm:Book { title: "Animal Farm", releaseYear: 1945, price: 9.99, sku: "animalfarm", rating: 6.2 })
CREATE (animalfarm)-[:IN_GENRE]->(Drama)
    

CREATE (thehobbit:Book { title: "The Hobbit", releaseYear: 1937, price: 18.99, sku: "thehobbit", rating: 6.7 })
CREATE (thehobbit)-[:IN_GENRE]->(FantasyRomance)
    

CREATE (crimeandpunishment:Book { title: "Crime and Punishment", releaseYear: 1866, price: 14.99, sku: "crimeandpunishment", rating: 7.3 })
CREATE (crimeandpunishment)-[:IN_GENRE]->(Drama)
    

CREATE (annakarenina:Book { title: "Anna Karenina", releaseYear: 1878, price: 16.99, sku: "annakarenina", rating: 6.4 })
CREATE (annakarenina)-[:IN_GENRE]->(HistoricalRomance)
    

CREATE (frankenstein:Book { title: "Frankenstein", releaseYear: 1818, price: 13.99, sku: "frankenstein", rating: 8.3 })
CREATE (frankenstein)-[:IN_GENRE]->(SciFiRomance)
    

CREATE (theodyssey:Book { title: "The Odyssey", releaseYear: -800, price: 20.99, sku: "theodyssey", rating: 9.9 })
CREATE (theodyssey)-[:IN_GENRE]->(Drama)
    

CREATE (theiliad:Book { title: "The Iliad", releaseYear: -760, price: 20.99, sku: "theiliad", rating: 9.4 })
CREATE (theiliad)-[:IN_GENRE]->(Drama)
    

CREATE (dracula:Book { title: "Dracula", releaseYear: 1897, price: 12.99, sku: "dracula", rating: 6.5 })
    

CREATE (thepictureofdoriangray:Book { title: "The Picture of Dorian Gray", releaseYear: 1890, price: 10.99, sku: "thepictureofdoriangray", rating: 7.1 })
CREATE (thepictureofdoriangray)-[:IN_GENRE]->(Drama)
    

CREATE (senseandsensibility:Book { title: "Sense and Sensibility", releaseYear: 1811, price: 11.99, sku: "senseandsensibility", rating: 8.1 })
CREATE (senseandsensibility)-[:IN_GENRE]->(HistoricalRomance)
    

CREATE (lesmisérables:Book { title: "Les Misérables", releaseYear: 1862, price: 19.99, sku: "lesmisérables", rating: 8.9 })
CREATE (lesmisérables)-[:IN_GENRE]->(Drama)
    

CREATE (thealchemist:Book { title: "The Alchemist", releaseYear: 1988, price: 15.99, sku: "thealchemist", rating: 6.1 })
CREATE (thealchemist)-[:IN_GENRE]->(Drama)
    

CREATE (donquixote:Book { title: "Don Quixote", releaseYear: 1605, price: 18.99, sku: "donquixote", rating: 8.1 })
CREATE (donquixote)-[:IN_GENRE]->(Drama)
    

CREATE (thebrotherskaramazov:Book { title: "The Brothers Karamazov", releaseYear: 1880, price: 17.99, sku: "thebrotherskaramazov", rating: 8.1 })
CREATE (thebrotherskaramazov)-[:IN_GENRE]->(Drama)
    

CREATE (ataleoftwocities:Book { title: "A Tale of Two Cities", releaseYear: 1859, price: 12.99, sku: "ataleoftwocities", rating: 9.2 })
CREATE (ataleoftwocities)-[:IN_GENRE]->(HistoricalRomance)
    

CREATE (greatexpectations:Book { title: "Great Expectations", releaseYear: 1861, price: 14.99, sku: "greatexpectations", rating: 9.8 })
CREATE (greatexpectations)-[:IN_GENRE]->(Drama)
    

CREATE (thedivinecomedy:Book { title: "The Divine Comedy", releaseYear: 1320, price: 24.99, sku: "thedivinecomedy", rating: 9.3 })
CREATE (thedivinecomedy)-[:IN_GENRE]->(Drama)
    

CREATE (thegrapesofwrath:Book { title: "The Grapes of Wrath", releaseYear: 1939, price: 16.99, sku: "thegrapesofwrath", rating: 8.4 })
CREATE (thegrapesofwrath)-[:IN_GENRE]->(Drama)
    