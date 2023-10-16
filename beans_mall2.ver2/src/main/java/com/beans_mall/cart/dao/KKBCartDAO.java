package com.beans_mall.cart.dao;

import java.util.List;

import com.beans_mall.cart.model.CartDTO;

public interface KKBCartDAO {

    KKBCartDAO addCart(CartDTO cart) throws Exception;

    int buildAddCart() throws Exception;

    KKBCartDAO deleteCart(int cartId);

    int buildDeleteCart();

    KKBCartDAO modifyCount(CartDTO cart);

    int buildModifyCount();

    KKBCartDAO getCart(String memberId);

    List<CartDTO> buildGetCart();

    KKBCartDAO checkCart(CartDTO cart);

    CartDTO buildCheckCart();

    KKBCartDAO deleteOrderCart(CartDTO dto);

    int buildDeleteOrderCart();
}
