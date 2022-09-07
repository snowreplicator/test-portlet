package com.snowreplicator.test.web.portlet;

import com.liferay.portal.kernel.service.ServiceContext;

import com.snowreplicator.test.model.SomeTable;
import com.snowreplicator.test.service.SomeTableServiceUtil;

import java.util.List;

public class ActionUtil {

    public static List<SomeTable> getAll() {
        return SomeTableServiceUtil.getAll(new ServiceContext());
    }

}
