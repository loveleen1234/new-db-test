alter table employees ADD name_id INT  NOT NULL;

alter table employees ADD CONSTRAINT employees_titles_name_id

	FOREIGN KEY (`name_id`)
	REFERENCES `titles`(`id`);
