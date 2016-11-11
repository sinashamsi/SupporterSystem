package com.shamsi.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table
public class UserProfile extends BaseEntity {

    @Column(unique = true, nullable = false)
    private String type = UserProfileType.USER.getUserProfileType();

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

}
