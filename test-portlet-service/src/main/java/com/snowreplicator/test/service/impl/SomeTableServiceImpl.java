package com.snowreplicator.test.service.impl;

import com.liferay.portal.aop.AopService;
import com.liferay.portal.kernel.service.ServiceContext;

import com.snowreplicator.test.model.SomeTable;
import com.snowreplicator.test.service.base.SomeTableServiceBaseImpl;

import org.osgi.service.component.annotations.Component;

import java.util.List;

@Component(
        property = {
                "json.web.service.context.name=tst",
                "json.web.service.context.path=SomeTable"
        },
        service = AopService.class
)
public class SomeTableServiceImpl extends SomeTableServiceBaseImpl {

    public List<SomeTable> getAll(ServiceContext serviceContext) {
        return someTableLocalService.getAll();
    }

}
