
CREATE TABLE Aikavaraus (
   id INTEGER PRIMARY KEY AUTOINCREMENT,
   kayttaja TEXT NOT NULL,
   viikonpaiva TEXT,
   aloitus_aika TEXT,
   lopetus_aika TEXT,
   aihe TEXT,
   sijainti TEXT
);
