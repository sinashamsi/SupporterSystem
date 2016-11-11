package com.shamsi.model;


import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

import static javax.persistence.GenerationType.IDENTITY;

@MappedSuperclass
public class BaseEntity {

    @Id
    @GeneratedValue(strategy = IDENTITY)
    private long id;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }
}
