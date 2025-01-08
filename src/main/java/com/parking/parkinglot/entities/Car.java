package com.parking.parkinglot.entities;

import jakarta.persistence.*;

@Entity
@Table(name = "car")
public class Car {
    @ManyToOne
    @JoinColumn(name = "owner_id")
    private User owner;
    @Id
    @GeneratedValue
    private Long id;

    private CarPhoto photo;

    @ManyToOne
    public User getOwner() {
        return owner;
    }

    public void setOwner(User owner) {
        this.owner = owner;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }
    String licensePlate;
    public String getLicensePlate() {
        return licensePlate;
    }

    public void setLicensePlate(String licensePlate) {
        this.licensePlate = licensePlate;
    }

    String parkingSpot;
    public String getParkingSpot() {
        return parkingSpot;
    }
    public void setParkingSpot(String parkingSpot) {
        this.parkingSpot = parkingSpot;
    }

    @OneToOne(mappedBy = "car", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    public CarPhoto getPhoto() {return photo;}
    public void setPhoto(CarPhoto photo) {this.photo = photo;}
}