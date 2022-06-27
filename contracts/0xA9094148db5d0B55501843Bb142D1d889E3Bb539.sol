contract main {




// =====================  Runtime code  =====================


#
#  - zapandstake(uint256 arg1, address arg2, address arg3, uint256 arg4, uint256 arg5)
#
uint256 T;
uint256 S;
mapping of uint256 stake;
mapping of uint256 sub_5a20fed2;
mapping of uint256 sub_1e6f3d8a;
address ROUTERAddress;
address sub_780b0e64Address;
address sub_2e73b45bAddress;
address govAddress;
uint256 sub_ac3b9d37;
mapping of uint256 sub_2cde2aaa;
uint256 sub_f2eba50d;

function gov() {
    return govAddress
}

function sub_1e6f3d8a(?) {
    require calldata.size - 4 >= 32
    return sub_1e6f3d8a[arg1]
}

function stake(address arg1) {
    require calldata.size - 4 >= 32
    return stake[arg1]
}

function T() {
    return T
}

function sub_2cde2aaa(?) {
    require calldata.size - 4 >= 32
    return sub_2cde2aaa[arg1]
}

function sub_2e73b45b(?) {
    return sub_2e73b45bAddress
}

function ROUTER() {
    return ROUTERAddress
}

function S() {
    return S
}

function sub_5a20fed2(?) {
    require calldata.size - 4 >= 32
    return sub_5a20fed2[arg1]
}

function sub_780b0e64(?) {
    return sub_780b0e64Address
}

function sub_ac3b9d37(?) {
    return sub_ac3b9d37
}

function sub_f2eba50d(?) {
    return sub_f2eba50d
}

function _fallback() payable {
    revert
}

function setNextGov(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == govAddress
    govAddress = arg1
    return 0
}

function setMinArv(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == govAddress
    sub_2cde2aaa[address(arg2)] = arg1
    return 0
}

function minArv(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not sub_2cde2aaa[address(arg2)]:
        return 0
    if not sub_2cde2aaa[address(arg2)]:
        return 0
    if arg1 * sub_2cde2aaa[address(arg2)] / sub_2cde2aaa[address(arg2)] != arg1:
        revert with 0, 'ow'
    return (arg1 * sub_2cde2aaa[address(arg2)])
}

function currentPoolRewardsRay() {
    require ext_code.size(sub_2e73b45bAddress)
    staticcall sub_2e73b45bAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] != 10^9:
        revert with 0, 'ow'
    return (10^9 * ext_call.return_data[0])
}

function currentPoolRewardsRayAggr() {
    require ext_code.size(sub_2e73b45bAddress)
    staticcall sub_2e73b45bAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_f2eba50d + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'addw'
    if not sub_f2eba50d + ext_call.return_data[0]:
        return 0
    if (10^9 * sub_f2eba50d) + (10^9 * ext_call.return_data[0]) / sub_f2eba50d + ext_call.return_data[0] != 10^9:
        revert with 0, 'ow'
    return ((10^9 * sub_f2eba50d) + (10^9 * ext_call.return_data[0]))
}

function MyReward(address arg1) {
    require calldata.size - 4 >= 32
    if sub_5a20fed2[address(arg1)] > S:
        revert with 0, ''
    if not stake[address(arg1)]:
        if sub_1e6f3d8a[address(arg1)] > 0:
            revert with 0, ''
        return -sub_1e6f3d8a[address(arg1)]
    if (S * stake[address(arg1)]) - (sub_5a20fed2[address(arg1)] * stake[address(arg1)]) / stake[address(arg1)] != S - sub_5a20fed2[address(arg1)]:
        revert with 0, 'ow'
    if sub_1e6f3d8a[address(arg1)] > (S * stake[address(arg1)]) - (sub_5a20fed2[address(arg1)] * stake[address(arg1)]) / 10^9:
        revert with 0, ''
    return (((S * stake[address(arg1)]) - (sub_5a20fed2[address(arg1)] * stake[address(arg1)]) / 10^9) - sub_1e6f3d8a[address(arg1)])
}

function Distribute() {
    require ext_code.size(sub_2e73b45bAddress)
    staticcall sub_2e73b45bAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_f2eba50d + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'addw'
    if not sub_f2eba50d + ext_call.return_data[0]:
        if sub_ac3b9d37 > 0:
            revert with 0, ''
        if T != 0:
            if -sub_ac3b9d37 > T:
                if not T:
                    revert with 0, ''
                if (-sub_ac3b9d37 / T) + S < S:
                    revert with 0, 'addw'
                emit 0xd9bc0184: -sub_ac3b9d37 / T, T, S, (-sub_ac3b9d37 / T) + S, -sub_ac3b9d37, sub_ac3b9d37
                S += -sub_ac3b9d37 / T
                sub_ac3b9d37 = -sub_ac3b9d37
    else:
        if (10^9 * sub_f2eba50d) + (10^9 * ext_call.return_data[0]) / sub_f2eba50d + ext_call.return_data[0] != 10^9:
            revert with 0, 'ow'
        if sub_ac3b9d37 > (10^9 * sub_f2eba50d) + (10^9 * ext_call.return_data[0]):
            revert with 0, ''
        if T != 0:
            if (10^9 * sub_f2eba50d) + (10^9 * ext_call.return_data[0]) - sub_ac3b9d37 > T:
                if not T:
                    revert with 0, ''
                if ((10^9 * sub_f2eba50d) + (10^9 * ext_call.return_data[0]) - sub_ac3b9d37 / T) + S < S:
                    revert with 0, 'addw'
                emit 0xd9bc0184: (10^9 * sub_f2eba50d) + (10^9 * ext_call.return_data[0]) - sub_ac3b9d37 / T, T, S, ((10^9 * sub_f2eba50d) + (10^9 * ext_call.return_data[0]) - sub_ac3b9d37 / T) + S, (10^9 * sub_f2eba50d) + (10^9 * ext_call.return_data[0]) - sub_ac3b9d37, sub_ac3b9d37
                S += (10^9 * sub_f2eba50d) + (10^9 * ext_call.return_data[0]) - sub_ac3b9d37 / T
                sub_ac3b9d37 = (10^9 * sub_f2eba50d) + (10^9 * ext_call.return_data[0]) - sub_ac3b9d37
}

function Harvest() {
    if sub_5a20fed2[address(msg.sender)] > S:
        revert with 0, ''
    if not stake[address(msg.sender)]:
        if sub_1e6f3d8a[address(msg.sender)] > 0:
            revert with 0, ''
        if -sub_1e6f3d8a[address(msg.sender)] + sub_1e6f3d8a[msg.sender] < sub_1e6f3d8a[msg.sender]:
            revert with 0, 'addw'
        sub_1e6f3d8a[msg.sender] -= sub_1e6f3d8a[address(msg.sender)]
        if -sub_1e6f3d8a[address(msg.sender)] + sub_f2eba50d < sub_f2eba50d:
            revert with 0, 'addw'
        sub_f2eba50d -= sub_1e6f3d8a[address(msg.sender)]
        require ext_code.size(sub_2e73b45bAddress)
        call sub_2e73b45bAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, -sub_1e6f3d8a[address(msg.sender)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Yield(-sub_1e6f3d8a[address(msg.sender)], msg.sender);
    else:
        if (S * stake[address(msg.sender)]) - (sub_5a20fed2[address(msg.sender)] * stake[address(msg.sender)]) / stake[address(msg.sender)] != S - sub_5a20fed2[address(msg.sender)]:
            revert with 0, 'ow'
        if sub_1e6f3d8a[address(msg.sender)] > (S * stake[address(msg.sender)]) - (sub_5a20fed2[address(msg.sender)] * stake[address(msg.sender)]) / 10^9:
            revert with 0, ''
        if ((S * stake[address(msg.sender)]) - (sub_5a20fed2[address(msg.sender)] * stake[address(msg.sender)]) / 10^9) - sub_1e6f3d8a[address(msg.sender)] + sub_1e6f3d8a[msg.sender] < sub_1e6f3d8a[msg.sender]:
            revert with 0, 'addw'
        sub_1e6f3d8a[msg.sender] = ((S * stake[address(msg.sender)]) - (sub_5a20fed2[address(msg.sender)] * stake[address(msg.sender)]) / 10^9) - sub_1e6f3d8a[address(msg.sender)] + sub_1e6f3d8a[msg.sender]
        if ((S * stake[address(msg.sender)]) - (sub_5a20fed2[address(msg.sender)] * stake[address(msg.sender)]) / 10^9) - sub_1e6f3d8a[address(msg.sender)] + sub_f2eba50d < sub_f2eba50d:
            revert with 0, 'addw'
        sub_f2eba50d = ((S * stake[address(msg.sender)]) - (sub_5a20fed2[address(msg.sender)] * stake[address(msg.sender)]) / 10^9) - sub_1e6f3d8a[address(msg.sender)] + sub_f2eba50d
        require ext_code.size(sub_2e73b45bAddress)
        call sub_2e73b45bAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, ((S * stake[address(msg.sender)]) - (sub_5a20fed2[address(msg.sender)] * stake[address(msg.sender)]) / 10^9) - sub_1e6f3d8a[address(msg.sender)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Yield((((S * stake[address(msg.sender)]) - (sub_5a20fed2[address(msg.sender)] * stake[address(msg.sender)]) / 10^9) - sub_1e6f3d8a[address(msg.sender)]), msg.sender);
}

function HarvestETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_5a20fed2[address(msg.sender)] > S:
        revert with 0, ''
    if not stake[address(msg.sender)]:
        if sub_1e6f3d8a[address(msg.sender)] > 0:
            revert with 0, ''
        if -sub_1e6f3d8a[address(msg.sender)] + sub_1e6f3d8a[msg.sender] < sub_1e6f3d8a[msg.sender]:
            revert with 0, 'addw'
        sub_1e6f3d8a[msg.sender] -= sub_1e6f3d8a[address(msg.sender)]
        if -sub_1e6f3d8a[address(msg.sender)] + sub_f2eba50d < sub_f2eba50d:
            revert with 0, 'addw'
        sub_f2eba50d -= sub_1e6f3d8a[address(msg.sender)]
        require ext_code.size(ROUTERAddress)
        staticcall ROUTERAddress.WETH() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_2e73b45bAddress)
        call sub_2e73b45bAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args ROUTERAddress, -sub_1e6f3d8a[address(msg.sender)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp + 600 < block.timestamp:
            revert with 0, 'addw'
        mem[580 len 0] = None
        require ext_code.size(ROUTERAddress)
        call ROUTERAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args -sub_1e6f3d8a[address(msg.sender)], arg1, Array(len=2, data=mem[580 len 64]), msg.sender, block.timestamp + 600
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Yield(-sub_1e6f3d8a[address(msg.sender)], msg.sender);
    else:
        if (S * stake[address(msg.sender)]) - (sub_5a20fed2[address(msg.sender)] * stake[address(msg.sender)]) / stake[address(msg.sender)] != S - sub_5a20fed2[address(msg.sender)]:
            revert with 0, 'ow'
        if sub_1e6f3d8a[address(msg.sender)] > (S * stake[address(msg.sender)]) - (sub_5a20fed2[address(msg.sender)] * stake[address(msg.sender)]) / 10^9:
            revert with 0, ''
        if ((S * stake[address(msg.sender)]) - (sub_5a20fed2[address(msg.sender)] * stake[address(msg.sender)]) / 10^9) - sub_1e6f3d8a[address(msg.sender)] + sub_1e6f3d8a[msg.sender] < sub_1e6f3d8a[msg.sender]:
            revert with 0, 'addw'
        sub_1e6f3d8a[msg.sender] = ((S * stake[address(msg.sender)]) - (sub_5a20fed2[address(msg.sender)] * stake[address(msg.sender)]) / 10^9) - sub_1e6f3d8a[address(msg.sender)] + sub_1e6f3d8a[msg.sender]
        if ((S * stake[address(msg.sender)]) - (sub_5a20fed2[address(msg.sender)] * stake[address(msg.sender)]) / 10^9) - sub_1e6f3d8a[address(msg.sender)] + sub_f2eba50d < sub_f2eba50d:
            revert with 0, 'addw'
        sub_f2eba50d = ((S * stake[address(msg.sender)]) - (sub_5a20fed2[address(msg.sender)] * stake[address(msg.sender)]) / 10^9) - sub_1e6f3d8a[address(msg.sender)] + sub_f2eba50d
        require ext_code.size(ROUTERAddress)
        staticcall ROUTERAddress.WETH() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_2e73b45bAddress)
        call sub_2e73b45bAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args ROUTERAddress, ((S * stake[address(msg.sender)]) - (sub_5a20fed2[address(msg.sender)] * stake[address(msg.sender)]) / 10^9) - sub_1e6f3d8a[address(msg.sender)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp + 600 < block.timestamp:
            revert with 0, 'addw'
        mem[580 len 0] = None
        require ext_code.size(ROUTERAddress)
        call ROUTERAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ((S * stake[address(msg.sender)]) - (sub_5a20fed2[address(msg.sender)] * stake[address(msg.sender)]) / 10^9) - sub_1e6f3d8a[address(msg.sender)], arg1, Array(len=2, data=mem[580 len 64]), msg.sender, block.timestamp + 600
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Yield((((S * stake[address(msg.sender)]) - (sub_5a20fed2[address(msg.sender)] * stake[address(msg.sender)]) / 10^9) - sub_1e6f3d8a[address(msg.sender)]), msg.sender);
}



}
