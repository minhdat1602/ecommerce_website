package com.ecommerce.paging;


import java.awt.print.Pageable;

public class PageReq implements Pagable {
    private Integer page;
    private Integer limit;
    private String sortBy;
    private String sortName;

    public PageReq() {
    }

    public PageReq(Integer page, Integer limit) {
        this.page = page;
        this.limit = limit;
    }

    public PageReq(Integer page, Integer limit , String sortBy, String sortName) {
        this.page = page;
        this.limit = limit;
        this.sortBy = sortBy;
        this.sortName = sortName;
    }

    @Override
    public Integer getLimit() {
        return limit;
    }

    public void setLimit(Integer limit) {
        this.limit = limit;
    }

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public String getSortBy() {
        return sortBy;
    }

    public void setSortBy(String sortBy) {
        this.sortBy = sortBy;
    }

    public String getSortName() {
        return sortName;
    }

    public void setSortName(String sortName) {
        this.sortName = sortName;
    }
}
