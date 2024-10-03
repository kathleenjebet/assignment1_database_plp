CREATE TABLE discharges (
 disharge_id INT primary key auto_increment,
 admission_id INT,
 patient_id INT,
 discharge_date DATE NOT NULL,
 discharge_disposition VARCHAR(50)NOT NULL,
 FOREIGN KEY (admission_id) REFERENCES admissions(admission_id),
 FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);
CREATE TABLE admissions (
 admission_id INT primary key auto_increment,
 patient_id INT,
 admission_date DATE NOT NULL,
 discharge_date DATE NOT NULL,
 discharge_disposition VARCHAR(50)NOT NULL,
 service VARCHAR(50)NOT NULL,
 primary_diagnosis VARCHAR(50)NOT NULL,
 FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);
CREATE TABLE ed_visits (
 ed_visit_id INT primary key auto_increment,
 visit_id INT,
 patient_id INT,
 acuity INT(100)NOT NULL,
 reason_for_visit VARCHAR(50)NOT NULL,
 disposition VARCHAR(50)NOT NULL,
 FOREIGN KEY (visit_id) REFERENCES visits(visit_id),
 FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);
CREATE TABLE visits (
 visit_id INT primary key auto_increment,
 provider_id INT,
 patient_id INT,
 date_of_visit DATE NOT NULL,
 date_scheduled DATE NOT NULL,
 visit_depeartment_id INT NOT NULL,
 visit_type VARCHAR (50) NOT NULL,
 blood_pressure_systollic INT,
 blood_pressure_diastollic DECIMAL,
 pulse DECIMAL,
 visit_status VARCHAR(50)NOT NULL,
 FOREIGN KEY (provider_id) REFERENCES provider(provider_id),
 FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);
CREATE TABLE providers (
 provider_id INT primary key auto_increment,
 firstname VARCHAR (50) NOT NULL ,
 lastname VARCHAR (50) NOT NULL,
 phone_number VARCHAR (10) NOT NULL ,
 email_adress VARCHAR (50) NOT NULL,
 date_joined DATE NOT NULL
);
CREATE TABLE patients (
 patient_id INT primary key auto_increment,
 firstname VARCHAR (50) NOT NULL ,
 lastname VARCHAR (50) NOT NULL,
 language_ VARCHAR (10) NOT NULL ,
 gender VARCHAR (50) NOT NULL,
 date_of_birth DATE NOT NULL
);