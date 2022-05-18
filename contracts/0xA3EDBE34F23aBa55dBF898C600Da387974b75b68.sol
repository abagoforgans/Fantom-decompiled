contract main {




// =====================  Runtime code  =====================


const FACTORY = 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3

const ROUTER = 0xf491e7b69e4244ad4002bc14e878a34207e38c29


address governanceAddress;
uint32 stor1;
address sub_1e9d8a84Address;
uint256 totalBought;
uint256 sub_71b207f7;
uint256 sub_cea4abc1;
uint256 totalAvailable;
uint8 sub_5a702e94;

function sub_1e9d8a84(?) {
    return address(sub_1e9d8a84Address)
}

function totalBought() {
    return totalBought
}

function sub_5a702e94(?) {
    return bool(sub_5a702e94)
}

function governance() {
    return governanceAddress
}

function sub_71b207f7(?) {
    return sub_71b207f7
}

function sub_cea4abc1(?) {
    return sub_cea4abc1
}

function totalAvailable() {
    return totalAvailable
}

function donateEth() payable {
  stop
}

function transferProjProfit() {
    require msg.sender == governanceAddress
    call msg.sender with:
       value sub_cea4abc1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addLiquidity() {
    require msg.sender == governanceAddress
    require ext_code.size(address(sub_1e9d8a84Address))
    call address(sub_1e9d8a84Address).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, totalBought
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value sub_71b207f7 wei
         gas gas_remaining wei
        args 0, uint32(stor1), totalBought, totalBought, sub_71b207f7, this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    sub_5a702e94 = 1
    emit Launched(totalBought, sub_71b207f7);
}

function _fallback() payable {
    if not msg.value:
        if totalBought < totalBought:
            revert with 0, 'SafeMath: addition overflow'
        if (msg.value / 2) + sub_71b207f7 < sub_71b207f7:
            revert with 0, 'SafeMath: addition overflow'
        sub_71b207f7 += msg.value / 2
        if (msg.value / 2) + sub_cea4abc1 < sub_cea4abc1:
            revert with 0, 'SafeMath: addition overflow'
        sub_cea4abc1 += msg.value / 2
        if totalBought >= totalAvailable:
            revert with 0, 'full'
        if sub_5a702e94:
            revert with 0, 'full'
        require ext_code.size(address(sub_1e9d8a84Address))
        call address(sub_1e9d8a84Address).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        if 3 * msg.value / msg.value != 3:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if (3 * msg.value) + totalBought < totalBought:
            revert with 0, 'SafeMath: addition overflow'
        totalBought += 3 * msg.value
        if (msg.value / 2) + sub_71b207f7 < sub_71b207f7:
            revert with 0, 'SafeMath: addition overflow'
        sub_71b207f7 += msg.value / 2
        if (msg.value / 2) + sub_cea4abc1 < sub_cea4abc1:
            revert with 0, 'SafeMath: addition overflow'
        sub_cea4abc1 += msg.value / 2
        if totalBought >= totalAvailable:
            revert with 0, 'full'
        if sub_5a702e94:
            revert with 0, 'full'
        require ext_code.size(address(sub_1e9d8a84Address))
        call address(sub_1e9d8a84Address).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 3 * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Bought(msg.value);
}



}
