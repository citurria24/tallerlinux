INSERT INTO cumpleanios (nombre, fecha)
SELECT 'Frodo Baggins', '2005-01-14'
WHERE NOT EXISTS (
  SELECT 1 FROM cumpleanios
  WHERE nombre = 'Frodo Baggins' AND fecha = '2005-01-14'
)
UNION ALL
SELECT 'Aragorn', '2004-02-09'
WHERE NOT EXISTS (
  SELECT 1 FROM cumpleanios
  WHERE nombre = 'Aragorn' AND fecha = '2004-02-09'
)
UNION ALL
SELECT 'Arwen Undomiel', '1994-12-09'
WHERE NOT EXISTS (
  SELECT 1 FROM cumpleanios
  WHERE nombre = 'Arwen Undomiel' AND fecha = '1994-12-09'
);

