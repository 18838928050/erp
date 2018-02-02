/** <a href="http://www.cpupk.com/decompiler">Eclipse Class Decompiler</a> plugin, Copyright (c) 2017 Chen Chao. **/
package com.erp.model.vo;

import java.math.BigDecimal;
import java.util.Date;

public class PurchaseBillVO {
	public static final String CODE_RULE_BUY = "PURCHASE_BILL_BUY";
	public static final String CODE_RULE_BACK = "PURCHASE_BILL_BACK";
	public static final String BILL_TYPE_BUY = "BUY";
	public static final String BILL_TYPE_BACK = "BACK";
	private long id;
	private String billCode;
	private String billType = "BUY";
	private Date purchaseDate = new Date();
	private long storehouseId = 0L;
	private long providerId = 0L;
	private long managerId = 0L;
	private String managerName;
	private String contractCode;
	private String content;
	private String mark;
	private long bankAccountId = 0L;
	private BigDecimal imprest = new BigDecimal(0);
	private BigDecimal cost = new BigDecimal(0);
	private long createrId = 0L;
	private String createrName;
	private Date createTime = new Date();
	private long tallySetId = 0L;
	private Date updateTime = new Date();
	private String attachFile;

	
	
	@Override
	public String toString() {
		return "PurchaseBillVO [id=" + id + ", billCode=" + billCode
				+ ", billType=" + billType + ", purchaseDate=" + purchaseDate
				+ ", storehouseId=" + storehouseId + ", providerId="
				+ providerId + ", managerId=" + managerId + ", managerName="
				+ managerName + ", contractCode=" + contractCode + ", content="
				+ content + ", mark=" + mark + ", bankAccountId="
				+ bankAccountId + ", imprest=" + imprest + ", cost=" + cost
				+ ", createrId=" + createrId + ", createrName=" + createrName
				+ ", createTime=" + createTime + ", tallySetId=" + tallySetId
				+ ", updateTime=" + updateTime + ", attachFile=" + attachFile
				+ "]";
	}

	public String getAttachFile() {
		return this.attachFile;
	}

	public void setAttachFile(String attachFile) {
		this.attachFile = attachFile;
	}

	public Date getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public long getBankAccountId() {
		return this.bankAccountId;
	}

	public void setBankAccountId(long bankAccountId) {
		this.bankAccountId = bankAccountId;
	}

	public String getBillCode() {
		return this.billCode;
	}

	public void setBillCode(String billCode) {
		this.billCode = billCode;
	}

	public String getBillType() {
		return this.billType;
	}

	public void setBillType(String billType) {
		this.billType = billType;
	}

	public String getContractCode() {
		return this.contractCode;
	}

	public void setContractCode(String contractCode) {
		this.contractCode = contractCode;
	}

	public BigDecimal getCost() {
		return this.cost;
	}

	public void setCost(BigDecimal cost) {
		this.cost = cost;
	}

	public long getCreaterId() {
		return this.createrId;
	}

	public void setCreaterId(long createrId) {
		this.createrId = createrId;
	}

	public String getCreaterName() {
		return this.createrName;
	}

	public void setCreaterName(String createrName) {
		this.createrName = createrName;
	}

	public long getId() {
		return this.id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public BigDecimal getImprest() {
		return this.imprest;
	}

	public void setImprest(BigDecimal imprest) {
		this.imprest = imprest;
	}

	public long getManagerId() {
		return this.managerId;
	}

	public void setManagerId(long managerId) {
		this.managerId = managerId;
	}

	public String getManagerName() {
		return this.managerName;
	}

	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}

	public String getMark() {
		return this.mark;
	}

	public void setMark(String mark) {
		this.mark = mark;
	}

	public long getProviderId() {
		return this.providerId;
	}

	public void setProviderId(long providerId) {
		this.providerId = providerId;
	}

	public Date getPurchaseDate() {
		return this.purchaseDate;
	}

	public void setPurchaseDate(Date purchaseDate) {
		this.purchaseDate = purchaseDate;
	}

	public long getStorehouseId() {
		return this.storehouseId;
	}

	public void setStorehouseId(long storehouseId) {
		this.storehouseId = storehouseId;
	}

	public long getTallySetId() {
		return this.tallySetId;
	}

	public void setTallySetId(long tallySetId) {
		this.tallySetId = tallySetId;
	}

	public Date getUpdateTime() {
		return this.updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}
}