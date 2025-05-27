CREATE DATABASE IF NOT EXISTS credentials;
GRANT ALL ON credentials.* TO 'credentials001'@'%' IDENTIFIED BY 'password';

CREATE DATABASE IF NOT EXISTS discovery;
GRANT ALL ON discovery.* TO 'discov001'@'%' IDENTIFIED BY 'password';

CREATE DATABASE IF NOT EXISTS ecommerce;
GRANT ALL ON ecommerce.* TO 'ecomm001'@'%' IDENTIFIED BY 'password';

CREATE DATABASE IF NOT EXISTS enterprise_access;
GRANT ALL ON enterprise_access.* TO 'enterprise_access001'@'%' IDENTIFIED BY 'password';

CREATE DATABASE IF NOT EXISTS notes;
GRANT ALL ON notes.* TO 'notes001'@'%' IDENTIFIED BY 'password';

CREATE DATABASE IF NOT EXISTS registrar;
GRANT ALL ON registrar.* TO 'registrar001'@'%' IDENTIFIED BY 'password';

CREATE DATABASE IF NOT EXISTS xqueue;
GRANT ALL ON xqueue.* TO 'xqueue001'@'%' IDENTIFIED BY 'password';

CREATE DATABASE IF NOT EXISTS edxapp;
CREATE DATABASE IF NOT EXISTS edxapp_csmh;
GRANT ALL ON edxapp.* TO 'edxapp001'@'%' IDENTIFIED BY 'password';
GRANT ALL ON edxapp_csmh.* TO 'edxapp001'@'%';

CREATE DATABASE IF NOT EXISTS `dashboard`;
GRANT ALL ON `dashboard`.* TO 'analytics001'@'%' IDENTIFIED BY 'password';

CREATE DATABASE IF NOT EXISTS `analytics-api`;
GRANT ALL ON `analytics-api`.* TO 'analytics001'@'%' IDENTIFIED BY 'password';

CREATE DATABASE IF NOT EXISTS `reports`;
GRANT ALL ON `reports`.* TO 'analytics001'@'%' IDENTIFIED BY 'password';

CREATE DATABASE IF NOT EXISTS `reports_v1`;
GRANT ALL ON `reports_v1`.* TO 'analytics001'@'%' IDENTIFIED BY 'password';

CREATE DATABASE IF NOT EXISTS enterprise_subsidy;
CREATE USER IF NOT EXISTS 'subsidy001'@'%' IDENTIFIED BY 'password';
GRANT ALL ON enterprise_subsidy.* TO 'subsidy001'@'%';

CREATE DATABASE IF NOT EXISTS `enterprise_catalog`;
GRANT ALL ON `enterprise_catalog`.* TO 'catalog001'@'%' IDENTIFIED BY 'password';

CREATE DATABASE IF NOT EXISTS designer;
GRANT ALL ON discovery.* TO 'designer001'@'%' IDENTIFIED BY 'password';

CREATE DATABASE IF NOT EXISTS license_manager;
GRANT ALL ON license_manager.* TO 'license_manager001'@'%' IDENTIFIED BY 'password';

FLUSH PRIVILEGES;
