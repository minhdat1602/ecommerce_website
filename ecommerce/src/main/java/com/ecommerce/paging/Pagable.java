package com.ecommerce.paging;

public interface Pagable {
    Integer getPage();
    Integer getLimit();
    String getSortBy();
    String getSortName();
}
