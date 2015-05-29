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
// $runord="{$poem}_runord";

drop_existing_table($runord);

$sql_table = "
CREATE TABLE $runord (
    id serial NOT NULL,
    runord integer,
    $ms integer
);
";
$result_table=pg_query($db_handle, $sql_table);

$sql_pkey = "
ALTER TABLE ONLY ".$runord." ADD CONSTRAINT ".$runord."_pk PRIMARY KEY (id);
";

$result_pkey=pg_query($db_handle, $sql_pkey);

?>