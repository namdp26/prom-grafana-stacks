-- Create database if not exists
CREATE DATABASE IF NOT EXISTS grafana;

-- Drop existing user if exists
DROP USER IF EXISTS 'grafana'@'%';
DROP USER IF EXISTS 'grafana'@'grafana.grafana';
DROP USER IF EXISTS 'grafana'@'grafana';

-- Create users with proper hosts
CREATE USER 'grafana'@'%' IDENTIFIED BY '89DTguisSRFSDs';
CREATE USER 'grafana'@'grafana.grafana' IDENTIFIED BY '89DTguisSRFSDs';
CREATE USER 'grafana'@'grafana' IDENTIFIED BY '89DTguisSRFSDs';

-- Grant privileges
GRANT ALL PRIVILEGES ON grafana.* TO 'grafana'@'%';
GRANT ALL PRIVILEGES ON grafana.* TO 'grafana'@'grafana.grafana';
GRANT ALL PRIVILEGES ON grafana.* TO 'grafana'@'grafana';

-- Create exporter user
CREATE USER 'exporter'@'%' IDENTIFIED BY '0JTYwMFq4Oh4wR8tq' WITH MAX_USER_CONNECTIONS 3;
GRANT PROCESS, REPLICATION CLIENT, SELECT ON *.* TO 'exporter'@'%';

-- Flush privileges
FLUSH PRIVILEGES;
