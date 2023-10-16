package com.beans_mall.member.dao;

import com.beans_mall.member.model.MemberVO;

public interface KKBMemberDAO {

    MemberJoinBuilder memberJoin(MemberVO member);

    IdCheckBuilder idCheck(String memberId);

    MemberLoginBuilder memberLogin(MemberVO member);

    GetMemberInfoBuilder getMemberInfo(String memberId);

    interface MemberJoinBuilder {
        int buildMemberJoin();
    }

    interface IdCheckBuilder {
        int buildIdCheck();
    }

    interface MemberLoginBuilder {
        MemberVO buildMemberLogin();
    }

    interface GetMemberInfoBuilder {
        MemberVO buildGetMemberInfo();
    }
}
