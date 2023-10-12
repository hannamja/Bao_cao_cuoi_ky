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
 * Gia generated by hbm2java
 */
@Entity
@Table(name = "gia")
public class Gia implements java.io.Serializable {

	private GiaId id;
	private Mathang mathang;
	private Nhanvien nhanvien;
	private Integer gia;
	private Date ngaykt;

	public Gia() {
	}

	public Gia(GiaId id, Mathang mathang, Nhanvien nhanvien) {
		this.id = id;
		this.mathang = mathang;
		this.nhanvien = nhanvien;
	}

	public Gia(GiaId id, Mathang mathang, Nhanvien nhanvien, Integer gia, Date ngaykt) {
		this.id = id;
		this.mathang = mathang;
		this.nhanvien = nhanvien;
		this.gia = gia;
		this.ngaykt = ngaykt;
	}

	@EmbeddedId

	@AttributeOverrides({ @AttributeOverride(name = "mamh", column = @Column(name = "MAMH", nullable = false)),
			@AttributeOverride(name = "ngayapdung", column = @Column(name = "NGAYAPDUNG", nullable = false, length = 10)),
			@AttributeOverride(name = "manv", column = @Column(name = "MANV", nullable = false)) })
	public GiaId getId() {
		return this.id;
	}

	public void setId(GiaId id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "MAMH", nullable = false, insertable = false, updatable = false)
	public Mathang getMathang() {
		return this.mathang;
	}

	public void setMathang(Mathang mathang) {
		this.mathang = mathang;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "MANV", nullable = false, insertable = false, updatable = false)
	public Nhanvien getNhanvien() {
		return this.nhanvien;
	}

	public void setNhanvien(Nhanvien nhanvien) {
		this.nhanvien = nhanvien;
	}

	@Column(name = "GIA")
	public Integer getGia() {
		return this.gia;
	}

	public void setGia(Integer gia) {
		this.gia = gia;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "NGAYKT", length = 10)
	public Date getNgaykt() {
		return this.ngaykt;
	}

	public void setNgaykt(Date ngaykt) {
		this.ngaykt = ngaykt;
	}

}
