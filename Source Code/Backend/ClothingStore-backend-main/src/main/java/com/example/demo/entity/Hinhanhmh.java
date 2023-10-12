package com.example.demo.entity;
// Generated Jul 11, 2023, 9:57:41 PM by Hibernate Tools 4.3.5.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Hinhanhmh generated by hbm2java
 */
@Entity
@Table(name = "hinhanhmh")
public class Hinhanhmh implements java.io.Serializable {

	private Integer maha;
	private Mathang mathang;
	private String duongdan;

	public Hinhanhmh() {
	}

	public Hinhanhmh(Mathang mathang, String duongdan) {
		this.mathang = mathang;
		this.duongdan = duongdan;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "MAHA", unique = true, nullable = false)
	public Integer getMaha() {
		return this.maha;
	}

	public void setMaha(Integer maha) {
		this.maha = maha;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "MAMH")
	public Mathang getMathang() {
		return this.mathang;
	}

	public void setMathang(Mathang mathang) {
		this.mathang = mathang;
	}

	@Column(name = "DUONGDAN", length = 200)
	public String getDuongdan() {
		return this.duongdan;
	}

	public void setDuongdan(String duongdan) {
		this.duongdan = duongdan;
	}

}