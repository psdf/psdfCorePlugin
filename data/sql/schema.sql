CREATE TABLE psdfwf.activity (id BIGSERIAL, PRIMARY KEY(id));
CREATE TABLE psdfwf.catalogo (id BIGSERIAL, nombre VARCHAR(30) NOT NULL UNIQUE, definicion TEXT, PRIMARY KEY(id));
CREATE TABLE psdfwf.coordenada (id BIGSERIAL, nombre VARCHAR(30) NOT NULL UNIQUE, pxtop BIGINT, pxleft BIGINT, rel_picture BIGINT, rel_proceso BIGINT, PRIMARY KEY(id));
CREATE TABLE psdfwf.estado_flow (id BIGSERIAL, nombre VARCHAR(30) NOT NULL UNIQUE, descripcion VARCHAR(100), PRIMARY KEY(id));
CREATE TABLE psdfwf.flow (id BIGSERIAL, datafields TEXT, rel_estado BIGINT, rel_proceso BIGINT, PRIMARY KEY(id));
CREATE TABLE psdfwf.flow_det (id BIGSERIAL, activity_id VARCHAR(30) NOT NULL, rel_estado BIGINT, rel_flow BIGINT, rel_usuario BIGINT, tstart TIME, tend TIME, PRIMARY KEY(id));
CREATE TABLE psdforg.organizacion (id BIGSERIAL, nombre VARCHAR(30) NOT NULL UNIQUE, PRIMARY KEY(id));
CREATE TABLE psdfwf.paquete (id BIGSERIAL, nombre VARCHAR(30) NOT NULL UNIQUE, xpdl TEXT, rel_organizacion BIGINT, rel_paquete BIGINT, PRIMARY KEY(id));
CREATE TABLE psdfwf.picture (id BIGSERIAL, nombre VARCHAR(30) NOT NULL UNIQUE, rel_paquete BIGINT, PRIMARY KEY(id));
CREATE TABLE psdfwf.proceso (id BIGSERIAL, nombre VARCHAR(30) NOT NULL UNIQUE, rel_paquete BIGINT, imagen VARCHAR(30), PRIMARY KEY(id));
CREATE TABLE psdforg.unidadorg (id BIGSERIAL, nombre VARCHAR(30) NOT NULL UNIQUE, rel_organizacion BIGINT, PRIMARY KEY(id));
CREATE TABLE psdforg.usuario (id BIGSERIAL, nombre VARCHAR(30) NOT NULL UNIQUE, pass VARCHAR(30) NOT NULL UNIQUE, PRIMARY KEY(id));
ALTER TABLE psdfwf.coordenada ADD CONSTRAINT psdfwf_coordenada_rel_proceso_psdfwf_proceso_id FOREIGN KEY (rel_proceso) REFERENCES psdfwf.proceso(id) NOT DEFERRABLE INITIALLY IMMEDIATE;
ALTER TABLE psdfwf.coordenada ADD CONSTRAINT psdfwf_coordenada_rel_picture_psdfwf_picture_id FOREIGN KEY (rel_picture) REFERENCES psdfwf.picture(id) NOT DEFERRABLE INITIALLY IMMEDIATE;
ALTER TABLE psdfwf.flow ADD CONSTRAINT psdfwf_flow_rel_proceso_psdfwf_proceso_id FOREIGN KEY (rel_proceso) REFERENCES psdfwf.proceso(id) NOT DEFERRABLE INITIALLY IMMEDIATE;
ALTER TABLE psdfwf.flow_det ADD CONSTRAINT psdfwf_flow_det_rel_usuario_psdforg_usuario_id FOREIGN KEY (rel_usuario) REFERENCES psdforg.usuario(id) NOT DEFERRABLE INITIALLY IMMEDIATE;
ALTER TABLE psdfwf.flow_det ADD CONSTRAINT psdfwf_flow_det_rel_flow_psdfwf_flow_id FOREIGN KEY (rel_flow) REFERENCES psdfwf.flow(id) NOT DEFERRABLE INITIALLY IMMEDIATE;
ALTER TABLE psdfwf.paquete ADD CONSTRAINT psdfwf_paquete_rel_paquete_psdfwf_paquete_id FOREIGN KEY (rel_paquete) REFERENCES psdfwf.paquete(id) NOT DEFERRABLE INITIALLY IMMEDIATE;
ALTER TABLE psdfwf.paquete ADD CONSTRAINT psdfwf_paquete_rel_organizacion_psdforg_organizacion_id FOREIGN KEY (rel_organizacion) REFERENCES psdforg.organizacion(id) NOT DEFERRABLE INITIALLY IMMEDIATE;
ALTER TABLE psdfwf.picture ADD CONSTRAINT psdfwf_picture_rel_paquete_psdfwf_paquete_id FOREIGN KEY (rel_paquete) REFERENCES psdfwf.paquete(id) NOT DEFERRABLE INITIALLY IMMEDIATE;
ALTER TABLE psdfwf.proceso ADD CONSTRAINT psdfwf_proceso_rel_paquete_psdfwf_paquete_id FOREIGN KEY (rel_paquete) REFERENCES psdfwf.paquete(id) NOT DEFERRABLE INITIALLY IMMEDIATE;
ALTER TABLE psdforg.unidadorg ADD CONSTRAINT psdforg_unidadorg_rel_organizacion_psdforg_organizacion_id FOREIGN KEY (rel_organizacion) REFERENCES psdforg.organizacion(id) NOT DEFERRABLE INITIALLY IMMEDIATE;