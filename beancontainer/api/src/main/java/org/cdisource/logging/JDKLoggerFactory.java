package org.cdisource.logging;

public class JDKLoggerFactory implements LogFactory {

	@Override
	public Logger getLogger(String name) {
		return new JDKLogger(java.util.logging.Logger.getLogger(name));
	}

	@Override
	public Logger getLogger(Class<?> clazz) {
		return new JDKLogger(java.util.logging.Logger.getLogger(clazz.getName()));
	}

}
