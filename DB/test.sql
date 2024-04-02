CREATE TABLE `Untitled` (
                            `id`	varchar(100)	NOT NULL,
                            `name`	varchar(100)	NULL,
                            `gender`	varchar(100)	NULL,
                            `birth`	varchar(100)	NULL,
                            `phone`	varchar(100)	NULL,
                            `mail`	varchar(100)	NULL,
                            `address`	varchar(100)	NULL,
                            `univ`	varchar(100)	NULL,
                            `major`	varchar(100)	NULL,
                            `job_program`	varchar(100)	NULL,
                            `fund`	varchar(100)	NULL,
                            `cert`	varchar(100)	NULL,
                            `picture`	blob	NULL,
                            `complete`	varchar(100)	NULL,
                            `class`	varchar(100)	NOT NULL,
                            `login_id`	varchar(100)	NOT NULL
);

CREATE TABLE `Untitled2` (
                             `id`	varchar(100)	NOT NULL,
                             `start_date`	varchar(100)	NULL,
                             `end_date`	varchar(100)	NULL,
                             `train_time`	varchar(100)	NULL,
                             `instructor`	varchar(100)	NULL,
                             `manager`	varchar(100)	NULL,
                             `course`	varchar(100)	NULL
);

CREATE TABLE `Untitled3` (
                             `id`	varchar(100)	NOT NULL,
                             `member`	varchar(100)	NULL,
                             `topic`	varchar(100)	NULL,
                             `start_date`	varchar(100)	NULL,
                             `end_date`	varchar(100)	NULL,
                             `present_date`	varchar(100)	NULL,
                             `submit`	varchar(100)	NULL,
                             `course`	varchar(100)	NULL,
                             `type`	varchar(100)	NULL,
                             `team_name`	varchar(100)	NULL,
                             `port`	varchar(100)	NULL,
                             `class`	varchar(100)	NOT NULL,
                             `mentor`	varchar(100)	NOT NULL
);

CREATE TABLE `Untitled4` (
                             `id`	varchar(100)	NOT NULL,
                             `role`	varchar(100)	NULL,
                             `topic`	varchar(100)	NULL,
                             `team`	varchar(100)	NOT NULL,
                             `student`	varchar(100)	NOT NULL
);

CREATE TABLE `Untitled5` (
                             `id`	varchar(100)	NOT NULL,
                             `name`	varchar(100)	NULL,
                             `start_date`	varchar(100)	NULL,
                             `end_date`	varchar(100)	NULL,
                             `instructor`	varchar(100)	NOT NULL,
                             `class`	varchar(100)	NOT NULL
);

CREATE TABLE `Untitled6` (
                             `id`	varchar(100)	NOT NULL,
                             `depart`	varchar(100)	NULL,
                             `hope`	varchar(100)	NULL,
                             `early`	varchar(100)	NULL,
                             `other`	varchar(100)	NULL,
                             `portfolio`	longtext	NULL,
                             `student`	varchar(100)	NOT NULL
);

CREATE TABLE `Untitled7` (
                             `id`	varchar(100)	NOT NULL,
                             `name`	varchar(100)	NULL,
                             `inner_check`	varchar(100)	NULL,
                             `course`	varchar(100)	NULL,
                             `phone`	varchar(100)	NULL,
                             `lecture_record`	varchar(100)	NULL,
                             `ncs`	varchar(100)	NULL,
                             `belong`	varchar(100)	NULL,
                             `outter`	varchar(100)	NULL,
                             `comp`	varchar(100)	NULL,
                             `depart`	varchar(100)	NULL,
                             `team`	varchar(100)	NULL,
                             `login_id`	varchar(100)	NOT NULL
);

CREATE TABLE `Untitled8` (
                             `id`	varchar(100)	NOT NULL,
                             `name`	varchar(100)	NULL,
                             `understand`	varchar(100)	NULL,
                             `positive`	varchar(100)	NULL,
                             `apply`	varchar(100)	NULL,
                             `comment`	longtext	NULL,
                             `student`	varchar(100)	NOT NULL,
                             `subject`	varchar(100)	NOT NULL
);

CREATE TABLE `CopyOfUntitled8` (
                                   `id`	varchar(100)	NOT NULL,
                                   `name`	varchar(100)	NULL,
                                   `understand`	varchar(100)	NULL,
                                   `positive`	varchar(100)	NULL,
                                   `apply`	varchar(100)	NULL,
                                   `comment`	longtext	NULL,
                                   `student`	varchar(100)	NOT NULL,
                                   `subject`	varchar(100)	NOT NULL
);

CREATE TABLE `CopyOfUntitled82` (
                                    `id`	varchar(100)	NOT NULL,
                                    `name`	varchar(100)	NULL,
                                    `understand`	varchar(100)	NULL,
                                    `positive`	varchar(100)	NULL,
                                    `apply`	varchar(100)	NULL,
                                    `comment`	longtext	NULL,
                                    `student`	varchar(100)	NOT NULL,
                                    `subject`	varchar(100)	NOT NULL
);

CREATE TABLE `Untitled9` (
                             `id`	varchar(100)	NOT NULL,
                             `smoke`	varchar(100)	NULL,
                             `disease`	varchar(100)	NULL,
                             `student`	varchar(100)	NOT NULL,
                             `accident`	varchar(100)	NULL,
                             `etc`	varchar(100)	NULL
);

CREATE TABLE `Untitled10` (
                              `id`	varchar(100)	NOT NULL,
                              `reason`	varchar(100)	NULL,
                              `score`	varchar(100)	NULL,
                              `date`	varchar(100)	NULL,
                              `student`	varchar(100)	NOT NULL
);

CREATE TABLE `Untitled11` (
                              `id`	varchar(100)	NOT NULL,
                              `date`	varchar(100)	NULL,
                              `student`	varchar(100)	NOT NULL,
                              `subjedt`	varchar(100)	NOT NULL,
                              `comment`	longtext	NULL,
                              `file`	longtext	NULL,
                              `name`	varchar(100)	NULL,
                              `write_score`	varchar(100)	NULL,
                              `rank`	varchar(100)	NULL,
                              `practical_score`	varchar(100)	NULL,
                              `total_score`	varchar(100)	NULL
);

CREATE TABLE `Untitled12` (
                              `id`	varchar(100)	NOT NULL,
                              `education`	varchar(100)	NULL,
                              `certi`	varchar(100)	NULL,
                              `workshop`	varchar(100)	NULL,
                              `student`	varchar(100)	NOT NULL,
                              `cv`	longtext	NULL,
                              `resume`	longtext	NULL
);

CREATE TABLE `Untitled13` (
                              `id`	varchar(100)	NOT NULL,
                              `score`	varchar(100)	NULL,
                              `date`	varchar(100)	NULL,
                              `student`	varchar(100)	NOT NULL,
                              `subject`	varchar(100)	NOT NULL,
                              `comment`	longtext	NULL,
                              `file`	longtext	NULL
);

CREATE TABLE `Untitled14` (
                              `id`	varchar(100)	NOT NULL,
                              `attend`	varchar(100)	NULL,
                              `student`	varchar(100)	NOT NULL,
                              `subject`	varchar(100)	NOT NULL,
                              `date`	varchar(100)	NULL,
                              `time1`	varchar(100)	NULL,
                              `time2`	varchar(100)	NULL,
                              `time3`	varchar(100)	NULL
);

CREATE TABLE `Untitled15` (
                              `id`	varchar(100)	NOT NULL,
                              `address`	varchar(100)	NULL,
                              `cert`	varchar(100)	NULL,
                              `exp`	varchar(100)	NULL,
                              `stack`	varchar(100)	NULL,
                              `OA`	varchar(100)	NULL,
                              `content`	longtext	NULL,
                              `satis`	varchar(100)	NULL,
                              `edu_data`	varchar(100)	NULL,
                              `instructor`	varchar(100)	NULL,
                              `task`	varchar(100)	NULL,
                              `env`	varchar(100)	NULL,
                              `goal`	varchar(100)	NULL,
                              `doc`	longtext	NULL,
                              `personal`	varchar(100)	NULL,
                              `opinion`	varchar(100)	NULL,
                              `etc`	varchar(100)	NULL,
                              `name`	varchar(100)	NULL,
                              `student`	varchar(100)	NOT NULL,
                              `date`	varchar(100)	NULL
);

CREATE TABLE `Untitled17` (
                              `id`	varchar(100)	NOT NULL,
                              `text`	longtext	NULL,
                              `date`	varchar(100)	NULL,
                              `time`	varchar(100)	NULL,
                              `login_id`	varchar(100)	NOT NULL
);

CREATE TABLE `Untitled18` (
                              `id`	varchar(100)	NOT NULL,
                              `content_link`	longtext	NULL,
                              `subject`	varchar(100)	NOT NULL
);

CREATE TABLE `Untitled19` (
                              `id`	varchar(100)	NOT NULL,
                              `type`	varchar(100)	NULL,
                              `pwd`	varchar(100)	NULL
);

ALTER TABLE `Untitled` ADD CONSTRAINT `PK_UNTITLED` PRIMARY KEY (
                                                                 `id`
    );

ALTER TABLE `Untitled2` ADD CONSTRAINT `PK_UNTITLED2` PRIMARY KEY (
                                                                   `id`
    );

ALTER TABLE `Untitled3` ADD CONSTRAINT `PK_UNTITLED3` PRIMARY KEY (
                                                                   `id`
    );

ALTER TABLE `Untitled4` ADD CONSTRAINT `PK_UNTITLED4` PRIMARY KEY (
                                                                   `id`
    );

ALTER TABLE `Untitled5` ADD CONSTRAINT `PK_UNTITLED5` PRIMARY KEY (
                                                                   `id`
    );

ALTER TABLE `Untitled6` ADD CONSTRAINT `PK_UNTITLED6` PRIMARY KEY (
                                                                   `id`
    );

ALTER TABLE `Untitled7` ADD CONSTRAINT `PK_UNTITLED7` PRIMARY KEY (
                                                                   `id`
    );

ALTER TABLE `Untitled8` ADD CONSTRAINT `PK_UNTITLED8` PRIMARY KEY (
                                                                   `id`
    );

ALTER TABLE `CopyOfUntitled8` ADD CONSTRAINT `PK_COPYOFUNTITLED8` PRIMARY KEY (
                                                                               `id`
    );

ALTER TABLE `CopyOfUntitled82` ADD CONSTRAINT `PK_COPYOFUNTITLED82` PRIMARY KEY (
                                                                                 `id`
    );

ALTER TABLE `Untitled9` ADD CONSTRAINT `PK_UNTITLED9` PRIMARY KEY (
                                                                   `id`
    );

ALTER TABLE `Untitled10` ADD CONSTRAINT `PK_UNTITLED10` PRIMARY KEY (
                                                                     `id`
    );

ALTER TABLE `Untitled11` ADD CONSTRAINT `PK_UNTITLED11` PRIMARY KEY (
                                                                     `id`
    );

ALTER TABLE `Untitled12` ADD CONSTRAINT `PK_UNTITLED12` PRIMARY KEY (
                                                                     `id`
    );

ALTER TABLE `Untitled13` ADD CONSTRAINT `PK_UNTITLED13` PRIMARY KEY (
                                                                     `id`
    );

ALTER TABLE `Untitled14` ADD CONSTRAINT `PK_UNTITLED14` PRIMARY KEY (
                                                                     `id`
    );

ALTER TABLE `Untitled15` ADD CONSTRAINT `PK_UNTITLED15` PRIMARY KEY (
                                                                     `id`
    );

ALTER TABLE `Untitled17` ADD CONSTRAINT `PK_UNTITLED17` PRIMARY KEY (
                                                                     `id`
    );

ALTER TABLE `Untitled18` ADD CONSTRAINT `PK_UNTITLED18` PRIMARY KEY (
                                                                     `id`
    );

ALTER TABLE `Untitled19` ADD CONSTRAINT `PK_UNTITLED19` PRIMARY KEY (
                                                                     `id`
    );

