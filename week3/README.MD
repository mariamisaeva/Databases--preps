- Was your database already in 2NF / 3 NF?
The database is already in 2NF, as there is no partial dependency (no column should depend on the part of the primary key).
And not in 3NF as there is no transitive dependency

- What changes did you have to do to normalize your database?
Almost nothing, it's normalized. The only thing I had to change was the order of step_order and the step_id to further normalize the DB.
