package com.geekbrains.entities;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "clients")
public class Client {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "client_id")
    private Long client_id;

    @Column(name = "client_name")
    private String client_name;

    @ManyToMany
    @JoinTable(
            name = "client_order",
            joinColumns = @JoinColumn(name = "client_id"),
            inverseJoinColumns = @JoinColumn(name = "ware_id")
    )
    private List<Ware> wareList;

    public Client() {
    }

    public Client(String client_name) {
        this.client_name = client_name;
    }

    public Long getClient_id() {
        return client_id;
    }

    public void setClient_id(Long client_id) {
        this.client_id = client_id;
    }

    public String getClient_name() {
        return client_name;
    }

    public void setClient_name(String client_name) {
        this.client_name = client_name;
    }

    @Override
    public String toString() {
        String result = "";
        int wareCount = 0;

        if (wareList == null) {
            result =
                "Client{" +
                "client_id=" + client_id +
                ", client_name='" + client_name +
                '}';
        } else {
            wareCount = wareList.size();
            if (wareCount > 0) {
                for (Ware wl : wareList) {
                    result += "  - Ware [ ware_id=" + wl.getWare_id() + ", ware_name=" + wl.getWare_name() + ", ware_cost=" + wl.getWare_cost() + " ]" + "\r\n";
                }
            } else {
                result = "  - Ware=[" + "none" + "]";
            }

            result = "\r\n" + "client_id=" + client_id + ", client_name=" + client_name + "\r\n" + result;
        }

        return result;
    }
}
