package com.erp.controller.statistic.vo;

import java.math.BigDecimal;
import java.util.Date;
/**
 * guo
 * @author guo
 *业务单	通过id 进行关联 business
 */
public class BusinessBillExtVO {
	private long id;
	private String examined = "N";//审核
	private String completed = "N";//完结		账单的主要条件没有完结（未确定）
	private String closed = "N";//关闭
	private String collected = "N";//收集
	private String delivered = "N";//交付
	private String maked = "N";//使
	private String setuped = "N";//安装
	private String enabled = "Y";//启用
	private String hasReceive = "N";//收款
	private String hasAdjust = "N";//调账
	private String hasDeliver = "N";//提供
	private String hasSetu = "N";//设置
	private String examSms = "N";//
	private String makeSms = "N";//
	private long examinerId = 0L;
	private String examinerName;
	private Date examineTime;
	private Date completeTime;
	private Date closeTime;
	private String closerName;
	private long closerId = 0L;
	private String makerName;
	private BigDecimal collectedCost = new BigDecimal(0);
	private BigDecimal receiveCost = new BigDecimal(0);//已收
	private BigDecimal adjustCost = new BigDecimal(0);//调账
	private long disableManId = 0L;
	private String lastPrinter;
	private int printNum = 0;
	private Date receTime;

	public String getSetuped() {
		return this.setuped;
	}

	public void setSetuped(String setuped) {
		this.setuped = setuped;
	}

	public String getHasSetu() {
		return this.hasSetu;
	}

	public void setHasSetu(String hasSetu) {
		this.hasSetu = hasSetu;
	}

	public Date getReceTime() {
		return this.receTime;
	}

	public void setReceTime(Date receTime) {
		this.receTime = receTime;
	}

	public Date getCompleteTime() {
		return this.completeTime;
	}

	public void setCompleteTime(Date completeTime) {
		this.completeTime = completeTime;
	}

	public BigDecimal getReceiveCost() {
		return this.receiveCost;
	}

	public void setReceiveCost(BigDecimal receiveCost) {
		this.receiveCost = receiveCost;
	}

	public long getId() {
		return this.id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getExamined() {
		return this.examined;
	}

	public void setExamined(String examined) {
		this.examined = examined;
	}

	public long getExaminerId() {
		return this.examinerId;
	}

	public void setExaminerId(long examinerId) {
		this.examinerId = examinerId;
	}

	public String getExaminerName() {
		return this.examinerName;
	}

	public void setExaminerName(String examinerName) {
		this.examinerName = examinerName;
	}

	public Date getExamineTime() {
		return this.examineTime;
	}

	public void setExamineTime(Date examineTime) {
		this.examineTime = examineTime;
	}

	public String getCompleted() {
		return this.completed;
	}

	public void setCompleted(String completed) {
		this.completed = completed;
	}

	public String getClosed() {
		return this.closed;
	}

	public void setClosed(String closed) {
		this.closed = closed;
	}

	public Date getCloseTime() {
		return this.closeTime;
	}

	public void setCloseTime(Date closeTime) {
		this.closeTime = closeTime;
	}

	public String getCloserName() {
		return this.closerName;
	}

	public void setCloserName(String closerName) {
		this.closerName = closerName;
	}

	public long getCloserId() {
		return this.closerId;
	}

	public void setCloserId(long closerId) {
		this.closerId = closerId;
	}

	public String getMakerName() {
		return this.makerName;
	}

	public void setMakerName(String makerName) {
		this.makerName = makerName;
	}

	public String getCollected() {
		return this.collected;
	}

	public void setCollected(String collected) {
		this.collected = collected;
	}

	public String getMaked() {
		return this.maked;
	}

	public void setMaked(String maked) {
		this.maked = maked;
	}

	public String getDelivered() {
		return this.delivered;
	}

	public void setDelivered(String delivered) {
		this.delivered = delivered;
	}

	public BigDecimal getCollectedCost() {
		return this.collectedCost;
	}

	public void setCollectedCost(BigDecimal collectedCost) {
		this.collectedCost = collectedCost;
	}

	public BigDecimal getAdjustCost() {
		return this.adjustCost;
	}

	public void setAdjustCost(BigDecimal adjustCost) {
		this.adjustCost = adjustCost;
	}

	public String getEnabled() {
		return this.enabled;
	}

	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}

	public long getDisableManId() {
		return this.disableManId;
	}

	public void setDisableManId(long disableManId) {
		this.disableManId = disableManId;
	}

	public String getLastPrinter() {
		return this.lastPrinter;
	}

	public void setLastPrinter(String lastPrinter) {
		this.lastPrinter = lastPrinter;
	}

	public int getPrintNum() {
		return this.printNum;
	}

	public void setPrintNum(int printNum) {
		this.printNum = printNum;
	}

	public String getHasReceive() {
		return this.hasReceive;
	}

	public void setHasReceive(String hasReceive) {
		this.hasReceive = hasReceive;
	}

	public String getHasAdjust() {
		return this.hasAdjust;
	}

	public void setHasAdjust(String hasAdjust) {
		this.hasAdjust = hasAdjust;
	}

	public String getHasDeliver() {
		return this.hasDeliver;
	}

	public void setHasDeliver(String hasDeliver) {
		this.hasDeliver = hasDeliver;
	}

	public String getExamSms() {
		return this.examSms;
	}

	public void setExamSms(String examSms) {
		this.examSms = examSms;
	}

	public String getMakeSms() {
		return this.makeSms;
	}

	public void setMakeSms(String makeSms) {
		this.makeSms = makeSms;
	}
}