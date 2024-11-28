using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FirebirdSql.Data.FirebirdClient;
using DBLevel;
//using System.Data;
using System.Reflection;
using System.ComponentModel;
using System.Data;
using System.Drawing;

using System.Windows.Forms;


namespace GalaxyDataBase

{
    class ClassBasesDeDatos
    {


        public int AgregarBaseDeDatos(string vRUTA, string vALIAS, string vHOST, string vUSUARIO, string vPASS, string vPUERTO)
        {
            //           IDBASE   INTEGER NOT NULL,
            FbConnection vConexion = new FbConnection(ClassGlobales.vCadenaConexionDataBase);

            String vSQL_SELECT = "SELECT * FROM BASESDEDATOS WHERE RUTADB='" + vRUTA + "' AND ALIAS='" + vALIAS + "';";

            FbDataAdapter da = new FbDataAdapter(vSQL_SELECT, ClassGlobales.vCadenaConexionDataBase);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                //SI devuelve 1 entonces quiere decir que ya existe
                vConexion.Close();
                return 1;
            }
            else
            {


                //RUTADB   VARCHAR(254) NOT NULL,
                //ALIAS    VARCHAR(100) NOT NULL,
                //HOST     VARCHAR(25) NOT NULL,
                //USUARIO  VARCHAR(25) NOT NULL,
                //PASS     VARCHAR(25) NOT NULL,
                //PUERTO   VARCHAR(20) NOT NULL,

                String vSQL_Insert = "INSERT INTO BASESDEDATOS (RUTADB,ALIAS,HOST,USUARIO,PASS,PUERTO) VALUES ( '" + vRUTA + "','" + vALIAS + "','" + vHOST + "','" + vUSUARIO + "','" + vPASS + "','" + vPUERTO + "'); ";
                FbCommand cmd = new FbCommand(vSQL_Insert, vConexion);
                vConexion.Open();

                if ((cmd.ExecuteNonQuery() == 1))
                {
                    //Si devuelve 0 entonces se ejecuto la consulta
                    vConexion.Close();
                    return 0;

                }
                else
                {
                    //Si devuelve 2 quiere decir que ocurrio un error al insertar
                    vConexion.Close();
                    return 2;
                }

            }


        }



        public DataTable EjecutarSQL_QUERY(String vSQL)
        {
            DataTable vData_Table = new DataTable();
            try
            {
                FbDataAdapter vFBConecccion = new FbDataAdapter(vSQL, ClassGlobales.vCadenaConexionDataBase);
                ClassGlobales.GenerarLOG_DB("SQL", vSQL, "EXITOSO", "NINGUNO");
                vFBConecccion.Fill(vData_Table);

            }
            catch (Exception vExcep)
            {
                MessageBox.Show(vExcep.ToString());

                ClassGlobales.GenerarLOG_DB("SQL", vSQL, "ERRONEO", vExcep.ToString());
            }

            return vData_Table;

        }




        public int basesdedatos()
        {
            FbConnection vConexion = new FbConnection(ClassGlobales.vCadenaConexionDataBase);

            //RUTADB   VARCHAR(254) NOT NULL,
            //ALIAS    VARCHAR(100) NOT NULL,
            //HOST     VARCHAR(25) NOT NULL,
            //USUARIO  VARCHAR(25) NOT NULL,
            //PASS     VARCHAR(25) NOT NULL,
            //PUERTO   VARCHAR(20) NOT NULL,
            String vSQL_Insert = "SELECT DISTINCT  RDB$RELATION_NAME FROM  RDB$RELATION_FIELDS WHERE RDB$SYSTEM_FLAG = 0;";
            FbCommand cmd = new FbCommand(vSQL_Insert, vConexion);
            vConexion.Open();

            if ((cmd.ExecuteNonQuery() == 1))
            {
                //Si devuelve 0 entonces se ejecuto la consulta
                vConexion.Close();
                return 0;

            }
            else
            {
                //Si devuelve 2 quiere decir que ocurrio un error al insertar
                vConexion.Close();
                return 2;
            }

        }

        public int BorrarBaseDeDatos(string vID)
        {
            //           IDBASE   INTEGER NOT NULL,


            FbConnection vConexion = new FbConnection(ClassGlobales.vCadenaConexionDataBase);

            String vSQL_Delete = "DELETE FROM BASESDEDATOS WHERE IDBASE='" + vID + "'";
            FbCommand cmd = new FbCommand(vSQL_Delete, vConexion);
            vConexion.Open();

            if ((cmd.ExecuteNonQuery() == 1))
            {
                //Si devuelve 0 entonces se ejecuto la consulta
                vConexion.Close();
                return 0;

            }
            else
            {
                //Si devuelve 2 quiere decir que ocurrio un error al insertar
                vConexion.Close();
                return 2;
            }


        }




    }


}

