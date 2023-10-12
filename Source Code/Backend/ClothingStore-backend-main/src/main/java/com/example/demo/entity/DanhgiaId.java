package com.example.demo.entity;
// Generated Jul 11, 2023, 9:57:41 PM by Hibernate Tools 4.3.5.Final

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * DanhgiaId generated by hbm2java
 */
@Embeddable
public class DanhgiaId implements java.io.Serializable {

	private Date ngaydg;
	private int matk;
	private int mamh;

	public DanhgiaId() {
	}

	public DanhgiaId(Date ngaydg, int matk, int mamh) {
		this.ngaydg = ngaydg;
		this.matk = matk;
		this.mamh = mamh;
	}

	@Column(name = "NGAYDG", nullable = false, length = 10)
	public Date getNgaydg() {
		return this.ngaydg;
	}

	public void setNgaydg(Date ngaydg) {
		this.ngaydg = ngaydg;
	}

	@Column(name = "MATK", nullable = false)
	public int getMatk() {
		return this.matk;
	}

	public void setMatk(int matk) {
		this.matk = matk;
	}

	@Column(name = "MAMH", nullable = false)
	public int getMamh() {
		return this.mamh;
	}

	public void setMamh(int mamh) {
		this.mamh = mamh;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof DanhgiaId))
			return false;
		DanhgiaId castOther = (DanhgiaId) other;

		return ((this.getNgaydg() == castOther.getNgaydg()) || (this.getNgaydg() != null
				&& castOther.getNgaydg() != null && this.getNgaydg().equals(castOther.getNgaydg())))
				&& (this.getMatk() == castOther.getMatk()) && (this.getMamh() == castOther.getMamh());
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + (getNgaydg() == null ? 0 : this.getNgaydg().hashCode());
		result = 37 * result + this.getMatk();
		result = 37 * result + this.getMamh();
		return result;
	}

}
