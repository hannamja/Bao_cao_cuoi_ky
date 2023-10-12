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
 * CtQuyen generated by hbm2java
 */
@Entity
@Table(name = "ct_quyen")
public class CtQuyen implements java.io.Serializable {

	private CtQuyenId id;
	private Quyen quyen;
	private Taikhoan taikhoan;
	private Date ngayend;

	public CtQuyen() {
	}

	public CtQuyen(CtQuyenId id, Quyen quyen, Taikhoan taikhoan) {
		this.id = id;
		this.quyen = quyen;
		this.taikhoan = taikhoan;
	}

	public CtQuyen(CtQuyenId id, Quyen quyen, Taikhoan taikhoan, Date ngayend) {
		this.id = id;
		this.quyen = quyen;
		this.taikhoan = taikhoan;
		this.ngayend = ngayend;
	}

	@EmbeddedId

	@AttributeOverrides({
			@AttributeOverride(name = "ngaystart", column = @Column(name = "NGAYSTART", nullable = false, length = 10)),
			@AttributeOverride(name = "maquyen", column = @Column(name = "MAQUYEN", nullable = false)),
			@AttributeOverride(name = "matk", column = @Column(name = "MATK", nullable = false)) })
	public CtQuyenId getId() {
		return this.id;
	}

	public void setId(CtQuyenId id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "MAQUYEN", nullable = false, insertable = false, updatable = false)
	public Quyen getQuyen() {
		return this.quyen;
	}

	public void setQuyen(Quyen quyen) {
		this.quyen = quyen;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "MATK", nullable = false, insertable = false, updatable = false)
	public Taikhoan getTaikhoan() {
		return this.taikhoan;
	}

	public void setTaikhoan(Taikhoan taikhoan) {
		this.taikhoan = taikhoan;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "NGAYEND", length = 10)
	public Date getNgayend() {
		return this.ngayend;
	}

	public void setNgayend(Date ngayend) {
		this.ngayend = ngayend;
	}

}