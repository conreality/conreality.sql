#!/bin/sh
basedir=`dirname $0`
function load { echo "-- $1"; echo; cat "$basedir/$1" || exit 1; echo; }

# Schema
echo "DROP SCHEMA IF EXISTS conreality CASCADE;"; echo
echo "CREATE SCHEMA conreality;"; echo

# Extensions
load _extensions.sql

# Data Types
load binary_type.type.sql
load entity_type.type.sql
#load measure_type.type.sql
load state_action.type.sql

# Table references
load binary.table.sql
load entity.table.sql
#load theater.table.sql
load object.table.sql
load group.table.sql

# Tables
#load asset.table.sql
#load camera.table.sql
#load camera_frame.table.sql
load event.table.sql
load message.table.sql
#load object_motion.table.sql
load player.table.sql
load player_status.table.sql
#load player_heartbeat.table.sql
load state.table.sql
load target.table.sql
load unit.table.sql

# Trigger functions
load event_notify.function.sql
load message_notify.function.sql
load player_status_notify.function.sql
load state_check.function.sql
load state_notify.function.sql

# Triggers
load event_notify.trigger.sql
load message_notify.trigger.sql
load player_status_notify.trigger.sql
load state_check.trigger.sql
load state_notify.trigger.sql

# Views
#load asset_object.view.sql
#load camera_object.view.sql
#load message_with_avatar.view.sql
#load player_object.view.sql
#load target_object.view.sql

# Functions
#load binary_import.function.sql
#load distance_between.function.sql
#load event_send.function.sql
#load message_send.function.sql
#load motion_report.function.sql
#load object_invert_mass.function.sql
#load object_is_accelerating.function.sql
#load object_is_active.function.sql
#load object_is_immovable.function.sql
#load object_is_inactive.function.sql
#load object_is_located.function.sql
#load object_is_moving.function.sql
#load object_is_rotating.function.sql
#load object_location.function.sql
#load object_position.function.sql
#load object_velocity.function.sql
#load player_deregister.function.sql
#load player_register.function.sql
#load point_2d.function.sql
#load point_3d.function.sql
#load point_gps.function.sql
#load session_start.function.sql
#load session_terminate.function.sql
load state.function.sql
load state_ongoing.function.sql
