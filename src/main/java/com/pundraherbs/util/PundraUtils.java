package com.pundraherbs.util;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;

public class PundraUtils {
	public static long getLoggedInUserName() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		User user = ((User) authentication.getPrincipal());
		return Long.parseLong(user.getUsername());
	}
}
