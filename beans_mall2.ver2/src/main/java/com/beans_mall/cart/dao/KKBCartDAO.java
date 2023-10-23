package com.beans_mall.cart.dao;

import java.util.List;

import com.beans_mall.cart.model.CartDTO;

public interface KKBCartDAO {

    int addCart(CartDTO cart) throws Exception;

    int buildAddCart() throws Exception;

    int deleteCart(int cartId);

    int buildDeleteCart();

    int modifyCount(CartDTO cart);

    int buildModifyCount();

    List<CartDTO> getCart(String memberId);

    List<CartDTO> buildGetCart();

    KKBCartDAO checkCart(CartDTO cart);

    CartDTO buildCheckCart();

    KKBCartDAO deleteOrderCart(CartDTO dto);

    int buildDeleteOrderCart();
}
