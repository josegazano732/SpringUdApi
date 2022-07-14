/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.josegazano.springboot.backend.apirest.models.service;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.UUID;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author jlg
 */
@Service
public class UploadFileServiceImpl implements IUploadFileService {

    private final Logger log = LoggerFactory.getLogger(UploadFileServiceImpl.class);

    private final static String DIRECTORIO_UPPLOAD = "uploads";

    @Override
    public Resource cargar(String nombreFoto) throws MalformedURLException {
        Path rutaArchivo = getPath(nombreFoto);
        log.info(rutaArchivo.toString());
        Resource recurso = new UrlResource(rutaArchivo.toUri());

        if (!recurso.exists() && !recurso.isReadable()) {
            rutaArchivo = Paths.get("src/main/resources/static/images").resolve("no-usuario.png").toAbsolutePath();

            log.error("Error no se pudo cargar la imagen. " + nombreFoto);
        }
        return recurso;
    }

    @Override
    public String copiar(MultipartFile archivo) throws IOException {
        String nombreArchivo = UUID.randomUUID().toString() + "_" + archivo.getOriginalFilename().replace(" ", "");
        Path rutaArchivo = getPath(nombreArchivo);
        log.info(rutaArchivo.toString());

        Files.copy(archivo.getInputStream(), rutaArchivo);

        return nombreArchivo;
    }

    @Override
    public boolean eliminar(String nombreFoto) {
        if (nombreFoto != null && nombreFoto.length() > 0) {
            Path rutaFotoAnterior = Paths.get("uploads").resolve(nombreFoto).toAbsolutePath();
            File archivoFotoAnterior = rutaFotoAnterior.toFile();

            if (archivoFotoAnterior.exists() && archivoFotoAnterior.canRead()) {
                archivoFotoAnterior.delete();
                return true;
            }
        }
        return false;
    }

    @Override
    public Path getPath(String nombreFoto) {
        return Paths.get(DIRECTORIO_UPPLOAD).resolve(nombreFoto).toAbsolutePath();
    }

}
