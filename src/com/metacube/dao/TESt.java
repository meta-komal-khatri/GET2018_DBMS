package com.metacube.dao;
import java.sql.SQLException;

import com.metacube.exception.MySqlDriverClassException;
import com.metacube.exception.NullConnectionException;
import com.metacube.exception.NullPreparedStatementException;
import com.metacube.exception.NullResultSetException;
import com.metacube.jdbcConnection.*;

import static org.junit.Assert.*;

import org.junit.Test;

public class TESt {

	@Test
	public void test() throws ClassNotFoundException, SQLException, MySqlDriverClassException, NullResultSetException, NullConnectionException, NullPreparedStatementException {
		OrderDao dao=new OrderDao(ConnectionHelper.getConnection());
		dao.selectByShopperId(3);
	}

}
