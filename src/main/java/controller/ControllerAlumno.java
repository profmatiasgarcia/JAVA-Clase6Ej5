package controller;
/**
 * @author Prof Matias Garcia.
 * <p> Copyright (C) 2017 para <a href = "https://www.profmatiasgarcia.com.ar/"> www.profmatiasgarcia.com.ar </a>
 * - con licencia GNU GPL3.
 * <p> Este programa es software libre. Puede redistribuirlo y/o modificarlo bajo los términos de la
 * Licencia Pública General de GNU según es publicada por la Free Software Foundation, 
 * bien con la versión 3 de dicha Licencia o bien (según su elección) con cualquier versión posterior. 
 * Este programa se distribuye con la esperanza de que sea útil, pero SIN NINGUNA GARANTÍA, 
 * incluso sin la garantía MERCANTIL implícita o sin garantizar la CONVENIENCIA PARA UN PROPÓSITO
 * PARTICULAR. Véase la Licencia Pública General de GNU para más detalles.
 * Debería haber recibido una copia de la Licencia Pública General junto con este programa. 
 * Si no ha sido así ingrese a <a href = "http://www.gnu.org/licenses/"> GNU org </a>
 */
import java.util.ArrayList;
import java.util.List;
import dao.AlumnoDaoImpl;
import idao.IAlumnoDao;
import model.Alumno;
import view.VConsultasAlumnos;

public class ControllerAlumno {

    private VConsultasAlumnos vista = new VConsultasAlumnos();

    public ControllerAlumno() {
        vista.setVisible(true);
    }

    //llama al DAO para guardar un alumno
    public void agregar(Alumno alum) {
        IAlumnoDao dao = new AlumnoDaoImpl();
        dao.agregar(alum);
    }

    //llama al DAO para actualizar un alumno
    public void modificar(Alumno alum) {
        IAlumnoDao dao = new AlumnoDaoImpl();
        dao.modificar(alum);
    }

    //llama al DAO para eliminar un alumno
    public void eliminar(Alumno alum) {
        IAlumnoDao dao = new AlumnoDaoImpl();
        dao.eliminar(alum);
    }

    //llama al DAO para obtener todos los alumnos y luego los muestra en la vista
    public void verAlumnos() {
        List<Alumno> alums = new ArrayList<Alumno>();
        IAlumnoDao dao = new AlumnoDaoImpl();
        alums = dao.obtener();
        vista.verAlummnos(alums);
        
    }
    
}
