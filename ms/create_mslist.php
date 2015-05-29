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

/*
This script sets up a table to hold key information about your MSs when you are working on a project that involves more than one MS.  Set it up using the name of the poem: php db/create_mslist poem, eg php db/create_mslist jaafari.  You can then add further information to the database table using SQL Workbench.
*/

include("./includes/fns.php");
include("./andika/config.php");

$poem=$argv[1];
$mslist=$poem."_mslist";

//drop_existing_table($mslist);

$sql_table = "
CREATE TABLE $mslist (
    id serial NOT NULL,
    mstable character varying(50),
    msid character varying(1),
    colour character varying(20),
    note text
);
";
$result_table=pg_query($db_handle, $sql_table);

$sql_pkey = "
ALTER TABLE ONLY ".$mslist." ADD CONSTRAINT ".$mslist."_pk PRIMARY KEY (id);
";

$result_pkey=pg_query($db_handle, $sql_pkey);

?>