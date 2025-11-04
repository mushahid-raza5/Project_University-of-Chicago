USE smart_grid;
INSERT INTO Node (node_id, node_type, operational_status, capacity_mw) VALUES
(1, 'Substation', 'Active', 150.50),
(2, 'Transformer', 'Active', 75.25),
(3, 'Substation', 'Active', 200.75),
(4, 'Transformer', 'Maintenance', 50.00),
(5, 'Substation', 'Active', 180.30),
(6, 'Transformer', 'Active', 90.45),
(7, 'Substation', 'Inactive', 120.00),
(8, 'Transformer', 'Active', 65.80);
INSERT INTO Edge (edge_id, start_node_id, end_node_id, operational_status, capacity_mva) VALUES
(101, 1, 2, 'Online', 125.50),
(102, 2, 3, 'Online', 180.25),
(103, 3, 4, 'Offline', 95.75),
(104, 1, 5, 'Online', 210.40),
(105, 5, 6, 'Fault', 110.30),
(106, 6, 8, 'Online', 145.60),
(107, 3, 7, 'Offline', 85.20),
(108, 4, 6, 'Online', 120.90);
INSERT INTO Smart_meters (meter_id, node_id, operational_status) VALUES
(1001, 1, 'Active'),
(1002, 1, 'Active'),
(1003, 2, 'Faulty'),
(1004, 3, 'Active'),
(1005, 3, 'Active'),
(1006, 5, 'Inactive'),
(1007, 5, 'Active'),
(1008, 6, 'Active'),
(1009, 8, 'Active'),
(1010, 8, 'Active');
INSERT INTO Sensor_logs (sensor_log_id, sensor_type, reading_value, reading_unit, reading_quality, model_score, model_version, threshold_low, threshold_high, status_flag, recorded_at, fk_meter_id) VALUES
(10001,'temperature', 68.5, 'C', 'good', 0.92, 'v2.3.1', 50.0, 85.0, 'anomaly', '2025-10-22 08:00:00', 1001),
(10002,'voltage', 240.2, 'V', 'good', 0.88, 'v2.3.1', 220.0, 250.0, 'anomaly', '2025-10-22 08:00:00', 1001),
(10003,'current', 125.8, 'A', 'good', 0.95, 'v2.3.1', 0.0, 200.0, 'anomaly', '2025-10-22 08:00:00', 1002),
(10004,'temperature', 72.3, 'C', 'suspect', 0.65, 'v2.3.1', 50.0, 85.0, 'threshold_breach', '2025-10-22 08:00:00', 1004),
(10005,'vibration', 3.2, 'mm/s', 'bad', 0.42, 'v2.2.8', 0.0, 5.0, 'anomaly', '2025-10-22 08:00:00',  1004),
(10006,'pressure', 101.3, 'kPa', 'good', 0.91, 'v2.3.1', 95.0, 105.0, 'anomaly', '2025-10-22 08:00:00', 1005),
(10007,'humidity', 45.2, '%', 'good', 0.89, 'v2.3.1', 20.0, 80.0, 'anomaly', '2025-10-22 08:00:00',  1007),
(10008,'voltage', 238.9, 'V', 'good', 0.93, 'v2.3.1', 220.0, 250.0, 'anomaly', '2025-10-22 08:00:00',  1008),
(10009,'current', 142.5, 'A', 'good', 0.87, 'v2.3.1', 0.0, 200.0, 'anomaly', '2025-10-22 08:00:00',  1009),
(10010,'temperature', 91.7, 'C', 'bad', 0.38, 'v2.3.1', 50.0, 85.0, 'missing', '2025-10-22 08:00:00',  1010),
(10011,'temperature', 69.1, 'C', 'good', 0.94, 'v2.3.1', 50.0, 85.0, 'missing', '2025-10-22 09:00:00',  1001),
(10012,'current', 131.2, 'A', 'good', 0.96, 'v2.3.1', 0.0, 200.0, 'anomaly', '2025-10-22 09:00:00', 1002);
INSERT INTO Outage_faulty_asset (outage_id, fault_type, severity, status, detected_at, confirmed_at, cleared_at, root_cause, upstream_asset_id, downstream_asset_id, created_at, updated_at, edge_edge_id, node_node_id) VALUES
(2001, 'short_circuit', 'high', 'restored', '2025-10-21 14:32:00', '2025-10-21 14:45:00', '2025-10-21 18:20:00', 'Insulation failure on conductor', 501, 502, '2025-10-21 14:32:00', '2025-10-21 18:25:00', 101, 1),
(2002, 'overload', 'medium', 'active', '2025-10-22 06:15:00', '2025-10-22 06:30:00', NULL, 'Excessive load during peak hours', 503, 504, '2025-10-22 06:15:00', '2025-10-22 08:00:00', 102, 2),
(2003, 'ground_fault', 'critical', 'isolated', '2025-10-22 07:45:00', '2025-10-22 07:50:00', NULL, 'Tree contact with overhead line', 505, 506, '2025-10-22 07:45:00', '2025-10-22 07:55:00', 105, 5),
(2004, 'equipment_failure', 'high', 'false_alarm', '2025-10-20 22:10:00', '2025-10-20 22:30:00', '2025-10-20 22:35:00', 'Sensor malfunction', 507, 508, '2025-10-20 22:10:00', '2025-10-20 22:40:00', 106, 6),
(2005, 'open_circuit', 'medium', 'cancelled', '2025-10-19 11:20:00', NULL, '2025-10-19 11:25:00', 'False trip', 501, 503, '2025-10-19 11:20:00', '2025-10-19 11:30:00', 104, 4);
#How many substations (nodes) are currently active in the grid?
SELECT count(node_id) FROM node WHERE operational_status = 'Active';
# Which node pairs (edges) consistently show the largest voltage or load difference?
SELECT node_id FROM node WHERE capacity_mw 




