<?php

/* 
*********************************************************************
Copyright Kevin Donnelly 2010, 2011.
kevindonnelly.org.uk
This file is part of the Bangor Autoglosser.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License or the GNU
Affero General Public License as published by the Free Software
Foundation, either version 3 of the License, or (at your option)
any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
and the GNU Affero General Public License along with this program.
If not, see <http://www.gnu.org/licenses/>.
*********************************************************************
*/

// Uncomment if running standalone.
// include("./includes/fns.php");
// include("./andika/config.php");

// $poem="kiswahili";
// $words="{$poem}_words";
// $notes="{$poem}_notes";

drop_existing_table($words);

$sql_table = "
CREATE TABLE $words (
    word_id serial NOT NULL,
    msno integer,
    stanza integer,
    loc character varying(5),
    position integer,
    arabic character varying(50),
    close character varying(50),
    standard character varying(50),
    edclose character varying(50) default '' not null,
    edstan character varying(50) default '' not null,
    emend character varying(250) default '' not null,
    variant character varying(250) default '' not null,
    note text default '' not null,
    root character varying(50) default '' not null,
    english character varying(250) default '' not null
);
";
$result_table=pg_query($db_handle, $sql_table);

$sql_pkey = "
ALTER TABLE ONLY ".$words." ADD CONSTRAINT ".$words."_pk PRIMARY KEY (word_id);
";

$result_pkey=pg_query($db_handle, $sql_pkey);

?>