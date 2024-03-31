// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2;

interface IDezhouGame {

    // function shuffle() external pure returns(bytes[] memory pokers);

    // 注册充值（余额不能超过 totalLimit）
    function register(uint _balance) external returns(bool _result);
    // 注销退款
    function logout() external returns(uint _balance);

    // 加入游戏，自动下注，返回位置序号
    function joinGame() external returns(uint8 order);
    // 弃牌，退出本局游戏
    function abandon() external returns(bool _result);
    // 开始游戏，洗牌，发牌
    function startGame() external returns(bool _result);
    // 下注，跟注，加注，翻倍，梭哈，游戏结束自动结算
    function refuel(uint _amount) external returns(bool _result);
    // 开牌
    function emergeOne() external returns(bytes memory pokers);

    // 看牌
    function getMine() external view returns(bytes[] memory pokers);
    // 查看底池
    function totalFuel() external view returns(uint _totalFuel);
    // 查看本局游戏人数
    function totalSeat() external view returns(uint64 _totalSeat);
}
