contract main {




// =====================  Runtime code  =====================


const FACTORY = 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3

const ROUTER = 0xf491e7b69e4244ad4002bc14e878a34207e38c29


mapping of uint256 stor0;
mapping of uint8 stor1;
address sushiLPAddress;
uint256 totalLiquidity;
address governanceAddress;
uint256 sub_5e7c5af5;
address sub_1ca7bd8fAddress;
uint256 totalBought;
uint256 sub_71b207f7;
uint256 sub_cea4abc1;
uint256 totalAvailable;
uint8 sub_5a702e94;

function totalLiquidity() {
    return totalLiquidity
}

function sub_1ca7bd8f(?) {
    return sub_1ca7bd8fAddress
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

function sub_5e7c5af5(?) {
    return sub_5e7c5af5
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

function sushiLP() {
    return sushiLPAddress
}

function donateEth() payable {
  stop
}

function setGov(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'owner'
    governanceAddress = arg1
}

function sub_68aa4a4c(?) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'owner'
    if sushiLPAddress:
        revert with 0, 'LP set'
    sushiLPAddress = arg1
}

function setGovFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'owner'
    if sub_5e7c5af5 >= 11:
        revert with 0, 'fee too high'
    sub_5e7c5af5 = arg1
}

function sub_7091907e(?) {
    require msg.sender == governanceAddress
    require sub_5a702e94
    call msg.sender with:
       value sub_cea4abc1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_107a9385(?) {
    if not sub_71b207f7:
        revert with 0, 'SafeMath: division by zero'
    if not stor0[msg.sender] / sub_71b207f7:
        return 0
    if totalLiquidity * stor0[msg.sender] / sub_71b207f7 / stor0[msg.sender] / sub_71b207f7 != totalLiquidity:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return (totalLiquidity * stor0[msg.sender] / sub_71b207f7)
}

function _fallback() payable {
    if (20 * msg.value) + totalBought < totalBought:
        revert with 0, 'SafeMath: addition overflow'
    totalBought += 20 * msg.value
    if msg.value + stor0[msg.sender] < stor0[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    stor0[msg.sender] += msg.value
    if msg.value + sub_71b207f7 < sub_71b207f7:
        revert with 0, 'SafeMath: addition overflow'
    sub_71b207f7 += msg.value
    if totalBought >= totalAvailable:
        revert with 0, 'full'
    if sub_5a702e94:
        revert with 0, 'full'
    emit Bought(msg.value);
}

function claimLP() {
    if stor1[msg.sender]:
        revert with 0, 'LP claimed'
    if not sub_5a702e94:
        revert with 0, 'LGE ongoing'
    stor1[msg.sender] = 1
    if not sub_71b207f7:
        revert with 0, 'SafeMath: division by zero'
    if not stor0[msg.sender] / sub_71b207f7:
        require ext_code.size(sushiLPAddress)
        call sushiLPAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        if totalLiquidity * stor0[msg.sender] / sub_71b207f7 / stor0[msg.sender] / sub_71b207f7 != totalLiquidity:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(sushiLPAddress)
        call sushiLPAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, totalLiquidity * stor0[msg.sender] / sub_71b207f7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function addLiquidity() {
    require msg.sender == governanceAddress
    if not sub_71b207f7:
        if 0 > sub_71b207f7:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_cea4abc1 = sub_71b207f7
        require ext_code.size(sub_1ca7bd8fAddress)
        call sub_1ca7bd8fAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, totalBought
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args sub_1ca7bd8fAddress, totalBought, totalBought, 0, this.address, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        totalLiquidity = ext_call.return_data[64]
        sub_5a702e94 = 1
        emit Launched(totalBought, 0);
    else:
        if (100 * sub_71b207f7) - (sub_5e7c5af5 * sub_71b207f7) / sub_71b207f7 != -sub_5e7c5af5 + 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (100 * sub_71b207f7) - (sub_5e7c5af5 * sub_71b207f7) / 100 > sub_71b207f7:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_cea4abc1 = sub_71b207f7 - ((100 * sub_71b207f7) - (sub_5e7c5af5 * sub_71b207f7) / 100)
        require ext_code.size(sub_1ca7bd8fAddress)
        call sub_1ca7bd8fAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, totalBought
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
           value (100 * sub_71b207f7) - (sub_5e7c5af5 * sub_71b207f7) / 100 wei
             gas gas_remaining wei
            args sub_1ca7bd8fAddress, totalBought, totalBought, (100 * sub_71b207f7) - (sub_5e7c5af5 * sub_71b207f7) / 100, this.address, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        totalLiquidity = ext_call.return_data[64]
        sub_5a702e94 = 1
        emit Launched(totalBought, (100 * sub_71b207f7) - (sub_5e7c5af5 * sub_71b207f7) / 100);
}



}
