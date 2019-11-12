package com.pildorasinformaticas.productos;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.sql.DataSource;

public class ModeloProductos {

	private DataSource origenDatos;
	
	public ModeloProductos(DataSource origenDatos) {
		this.origenDatos=origenDatos;
	}
	
	public List<Productos> getProductos() throws SQLException{
		List<Productos> productos=new ArrayList<>();
		Connection miConexion=null;
		Statement miStatement=null;
		ResultSet miResultset=null;
		
		miConexion=origenDatos.getConnection();
		
		String instruccionSql="SELECT * FROM PRODUCTOS";
		
		miStatement=miConexion.createStatement();
		miResultset=miStatement.executeQuery(instruccionSql);
		
		while(miResultset.next()) {
			String cArt=miResultset.getString(1);
			String seccion=miResultset.getString(2);
			String nArt=miResultset.getString(3);
			double precio=miResultset.getDouble(4);
			Date fecha=miResultset.getDate(5);
			String importado=miResultset.getString(6);
			String pOrig=miResultset.getString(7);			
			
			Productos producto=new Productos(cArt,seccion,nArt,precio,fecha,importado,pOrig);
			productos.add(producto);
		}
		
		return productos;
	}
	
}
