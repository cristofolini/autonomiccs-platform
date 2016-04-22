-- This program is part of Autonomiccs "autonomic-platform",
-- an open source autonomic cloud computing management platform.
-- Copyright (C) 2016 Autonomiccs, Inc.
--
-- Licensed to the Autonomiccs, Inc. under one
-- or more contributor license agreements.  See the NOTICE file
-- distributed with this work for additional information
-- regarding copyright ownership. The The Autonomiccs, Inc. licenses this file
-- to you under the Apache License, Version 2.0 (the
-- "License"); you may not use this file except in compliance
-- with the License.  You may obtain a copy of the License at
--
--    http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing,
-- software distributed under the License is distributed on an
-- "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
-- KIND, either express or implied.  See the License for the
-- specific language governing permissions and limitations
-- under the License.

ALTER TABLE host DROP COLUMN start_type;
ALTER TABLE host DROP COLUMN administration_status;
ALTER TABLE cluster DROP COLUMN administration_status;
ALTER TABLE cluster DROP COLUMN last_administration;
DELETE FROM configuration WHERE component="autonomicClusterManager";
DROP TABLE AutonomiccsSystemVm;