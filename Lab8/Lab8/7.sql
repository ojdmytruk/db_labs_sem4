USE LazyStudent;

CREATE ROLE administrator;
GRANT ALL PRIVILEGES ON DATABASE::LazyStudent TO administrator;

CREATE ROLE manager;
GRANT SELECT, INSERT, UPDATE, DELETE ON DATABASE::LazyStudent TO manager;

CREATE ROLE employee;
GRANT SELECT ON DATABASE::LazyStudent TO employee;