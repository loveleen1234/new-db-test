alter table employees ADD title_id INT  NOT NULL;

alter table employees ADD CONSTRAINT employees_titles_title_id

	FOREIGN KEY (`title_id`)
	REFERENCES `titles`(`id`);
