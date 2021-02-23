package dao;
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
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connection.ConnectionDB;
import idao.IAlumnoDao;
import model.Alumno;

public class AlumnoDaoImpl implements IAlumnoDao {

    @Override
    public boolean agregar(Alumno alum) {
        boolean registrar = false;

        Statement stm = null;
        Connection con = null;

        String sql = "INSERT INTO alumnos values (NULL,'" + alum.getNombres() + "','" + alum.getApellidos() + "','" + alum.getEdad() + "','" + alum.getDireccion() + "','" + alum.getLocalidad() + "')";

        try {
            con = ConnectionDB.conectar();
            stm = con.createStatement();
            stm.execute(sql);
            registrar = true;

        } catch (SQLException e) {
            System.out.println("Error: Clase AlumnoDaoImpl, método agregar");
            e.printStackTrace();

        } finally {
            if (stm != null) {
                try {
                    stm.close();
                } catch (SQLException e) {
                    /* ignored */
                }
            }

            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                    /* ignored */
                }
            }
        }

        return registrar;
    }

    @Override
    public List<Alumno> obtener() {
        Connection con = null;
        Statement stm = null;
        ResultSet rs = null;

        String sql = "SELECT * FROM alumnos ORDER BY ID";

        List<Alumno> listaAlumnos = new ArrayList<Alumno>();

        try {
            con = ConnectionDB.conectar();
            stm = con.createStatement();
            rs = stm.executeQuery(sql);
            while (rs.next()) {
                Alumno c = new Alumno();
                c.setId(rs.getInt(1));
                c.setNombres(rs.getString(2));
                c.setApellidos(rs.getString(3));
                c.setEdad(rs.getInt(4));
                c.setDireccion(rs.getString(5));
                c.setLocalidad(rs.getInt(6));
                listaAlumnos.add(c);
            }

        } catch (SQLException e) {
            System.out.println("Error: Clase AlumnoDaoImpl, método obtener");
            e.printStackTrace();

        } finally {
            if (stm != null) {
                try {
                    stm.close();
                } catch (SQLException e) {
                    /* ignored */
                }
            }

            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    /* ignored */
                }
            }

            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                    /* ignored */
                }
            }
        }

        return listaAlumnos;
    }

    @Override
    public boolean modificar(Alumno alum
    ) {
        Connection con = null;
        Statement stm = null;

        boolean actualizar = false;

        String sql = "UPDATE alumnos SET nombres='" + alum.getNombres() + "', apellidos='" + alum.getApellidos() + "', edad='" + alum.getEdad() + "', direccion='" + alum.getDireccion() + "', localidad='" + alum.getLocalidad() + "'" + " WHERE ID=" + alum.getId();
        try {
            con = ConnectionDB.conectar();
            stm = con.createStatement();
            stm.execute(sql);
            actualizar = true;
        } catch (SQLException e) {
            System.out.println("Error: Clase AlumnoDaoImpl, método modificar");
            e.printStackTrace();

        } finally {
            if (stm != null) {
                try {
                    stm.close();
                } catch (SQLException e) {
                    /* ignored */
                }
            }

            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                    /* ignored */
                }
            }
        }
        return actualizar;
    }

    @Override
    public boolean eliminar(Alumno alum
    ) {
        Connection con = null;
        Statement stm = null;

        boolean eliminar = false;

        String sql = "DELETE FROM alumnos WHERE ID=" + alum.getId();
        try {
            con = ConnectionDB.conectar();
            stm = con.createStatement();
            stm.execute(sql);
            eliminar = true;

        } catch (SQLException e) {
            System.out.println("Error: Clase AlumnoDaoImpl, método eliminar");
            e.printStackTrace();

        } finally {
            if (stm != null) {
                try {
                    stm.close();
                } catch (SQLException e) {
                    /* ignored */
                }
            }

            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                    /* ignored */
                }
            }
        }
        return eliminar;
    }
}
