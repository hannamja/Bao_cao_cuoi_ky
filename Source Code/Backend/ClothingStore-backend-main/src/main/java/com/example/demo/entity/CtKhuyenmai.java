package com.example.demo.entity;
// Generated Jul 11, 2023, 9:57:41 PM by Hibernate Tools 4.3.5.Final

import java.util.Date;
import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * CtKhuyenmai generated by hbm2java
 */
@Entity
@Table(name = "ct_khuyenmai")
public class CtKhuyenmai implements java.io.Serializable {

	private CtKhuyenmaiId id;
	private Khuyenmai khuyenmai;
	private Mathang mathang;
	private String mucgiam;

	public CtKhuyenmai() {
	}

	public CtKhuyenmai(CtKhuyenmaiId id, Khuyenmai khuyenmai, Mathang mathang, String mucgiam) {
		this.id = id;
		this.khuyenmai = khuyenmai;
		this.mathang = mathang;
		this.mucgiam = mucgiam;
	}


	@EmbeddedId
	@AttributeOverrides({ @AttributeOverride(name = "makm", column = @Column(name = "MAKM", nullable = false)),
			@AttributeOverride(name = "mamh", column = @Column(name = "MAMH", nullable = false)) })
	public CtKhuyenmaiId getId() {
		return this.id;
	}

	public void setId(CtKhuyenmaiId id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "MAKM", nullable = false, insertable = false, updatable = false)
	public Khuyenmai getKhuyenmai() {
		return this.khuyenmai;
	}

	public void setKhuyenmai(Khuyenmai khuyenmai) {
		this.khuyenmai = khuyenmai;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "MAMH", nullable = false, insertable = false, updatable = false)
	public Mathang getMathang() {
		return this.mathang;
	}

	public void setMathang(Mathang mathang) {
		this.mathang = mathang;
	}

	

	@Column(name = "MUCGIAM", length = 45)
	public String getMucgiam() {
		return this.mucgiam;
	}

	public void setMucgiam(String mucgiam) {
		this.mucgiam = mucgiam;
	}

}
