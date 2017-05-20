package com.wtu.product.util;

import com.wtu.product.Constant;
import com.wtu.product.common.AppContext;

/**
 * PathUtil class to get full path of a request.
 */
public class PathUtil {

    /**
     * The method is used to get full path.
     * @param path
     * @return full path.
     */
    public static String getFullPath(String path) {
        if (path == null) {
            path = Constant.BLANK;
        }
        String urlPrefix = Constant.APP_URL_PREFIX;
        if (!StringUtil.isEmpty(urlPrefix)) {
            urlPrefix += Constant.SLASH;
        }
        return AppContext.getContextPath() + Constant.SLASH + urlPrefix + path;
    }
}
