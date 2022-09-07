package com.snowreplicator.test.service.impl;

import com.liferay.portal.aop.AopService;

import com.snowreplicator.test.model.SomeTable;
import com.snowreplicator.test.service.base.SomeTableLocalServiceBaseImpl;

import org.osgi.service.component.annotations.Component;

import java.util.List;

@Component(
        property = "model.class.name=com.snowreplicator.test.model.SomeTable",
        service = AopService.class
)
public class SomeTableLocalServiceImpl extends SomeTableLocalServiceBaseImpl {

    public List<SomeTable> getAll() {
        return someTablePersistence.findAll();
    }

}
