package com.beans_mall.util;

import org.springframework.format.Formatter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class DateFormatter implements Formatter<Date> {

	private final String pattern;

	public DateFormatter(String pattern) {
		this.pattern = pattern;
	}

	@Override
	public Date parse(String text, Locale locale) throws ParseException {
		SimpleDateFormat dateFormat = createDateFormat(locale);
		return dateFormat.parse(text);
	}

	@Override
	public String print(Date date, Locale locale) {
		SimpleDateFormat dateFormat = createDateFormat(locale);
		return dateFormat.format(date);
	}

	private SimpleDateFormat createDateFormat(Locale locale) {
		SimpleDateFormat dateFormat = new SimpleDateFormat(pattern, locale);
		dateFormat.setLenient(false);
		return dateFormat;
	}
}
